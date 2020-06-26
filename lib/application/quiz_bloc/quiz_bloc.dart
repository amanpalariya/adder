import 'dart:async';

import 'package:adder_game/domain/game_settings.dart';
import 'package:adder_game/domain/i_question_generator.dart';
import 'package:adder_game/domain/question.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

part 'quiz_bloc.freezed.dart';

@injectable
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final IQuestionGenerator _questionGenerator;
  final GameSettings gameSettings;
  final Duration refreshRate = const Duration(milliseconds: 10);
  StreamSubscription _timerStreamSubscription;

  QuizBloc(this._questionGenerator, {@required this.gameSettings});

  @override
  QuizState get initialState => QuizState.initial();

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    yield* event.map(
      start: (e) async* {
        yield QuizState.loadingQuestion(
          correctAnswersCount: 0,
          incorrectAnswersCount: 0,
          totalAnswersCount: 0,
        );
        yieldNewQuestionState();
      },
      onYesButtonPressed: (e) async* {
        state.maybeMap(
          showingQuestion: (showingQuestionState) {
            _timerStreamSubscription?.cancel();
            if (showingQuestionState.question.isTrue) {
              correctResponse().then((_) => yieldNewQuestionState());
            } else {
              incorrectResponse().then((_) => yieldNewQuestionState());
            }
          },
          orElse: () => state,
        );
      },
      onNoButtonPressed: (e) async* {
        state.maybeMap(
          showingQuestion: (showingQuestionState) {
            _timerStreamSubscription?.cancel();
            if (!showingQuestionState.question.isTrue) {
              correctResponse().then((_) => yieldNewQuestionState());
            } else {
              incorrectResponse().then((_) => yieldNewQuestionState());
            }
          },
          orElse: () => state,
        );
      },
      timeUp: (e) async* {
        timeUp().then((_) => yieldNewQuestionState());
      },
      showQuestion: (e) async* {
        yield QuizState.showingQuestion(
          question: e.question,
          correctAnswersCount: e.correctAnswersCount,
          incorrectAnswersCount: e.incorrectAnswersCount,
          totalAnswersCount: e.totalAnswersCount,
          timeLeft: e.timeLeft,
          maxTimePerQuestion: gameSettings.maxTimePerQuestion,
        );
      },
      showResponse: (event) async* {
        yield QuizState.showingResponse(
          question: event.question,
          correctAnswersCount: event.correctAnswersCount,
          incorrectAnswersCount: event.incorrectAnswersCount,
          totalAnswersCount: event.totalAnswersCount,
          timeLeft: event.timeLeft,
          totalTime: gameSettings.responseDisplayDuration,
          response: event.response,
        );
      },
    );
  }

  Future<Question> newQuestion() async {
    return await _questionGenerator.generateQuestionOfDifficulty(gameSettings.difficulty);
  }

  void yieldNewQuestionState() async {
    int correctAnswersCount = 0;
    int incorrectAnswersCount = 0;
    int totalAnswersCount = 0;
    Question question = await newQuestion();
    Stream timer = Stream.periodic(refreshRate);
    Duration timeLeft = gameSettings.maxTimePerQuestion;
    state.maybeMap(
      showingQuestion: (state) {
        correctAnswersCount = state.correctAnswersCount;
        incorrectAnswersCount = state.incorrectAnswersCount;
        totalAnswersCount = state.totalAnswersCount;
      },
      showingResponse: (state) {
        correctAnswersCount = state.correctAnswersCount;
        incorrectAnswersCount = state.incorrectAnswersCount;
        totalAnswersCount = state.totalAnswersCount;
      },
      orElse: () {},
    );
    _timerStreamSubscription?.cancel();
    add(QuizEvent.showQuestion(
      question: question,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      timeLeft: timeLeft,
    ));
    _timerStreamSubscription = timer.listen((_) {
      timeLeft = timeLeft - refreshRate;
      add(QuizEvent.showQuestion(
        question: question,
        correctAnswersCount: correctAnswersCount,
        incorrectAnswersCount: incorrectAnswersCount,
        totalAnswersCount: totalAnswersCount,
        timeLeft: timeLeft,
      ));
      if (timeLeft <= Duration.zero) {
        add(QuizEvent.timeUp());
        _timerStreamSubscription.cancel();
      }
    });
  }

  Future yieldResponseState(Response response) async {
    Completer completer = Completer();
    int correctAnswersCount;
    int incorrectAnswersCount;
    int totalAnswersCount;
    Question question;
    Stream timer = Stream.periodic(refreshRate);
    Duration timeLeft = gameSettings.responseDisplayDuration;
    state.maybeMap(
      showingQuestion: (state) {
        question = state.question;
        correctAnswersCount = state.correctAnswersCount +
            (response == Response.DoneRight ? 1 : 0);
        incorrectAnswersCount = state.incorrectAnswersCount +
            (response == Response.DoneWrong ? 1 : 0);
        totalAnswersCount = state.totalAnswersCount + 1;
      },
      showingResponse: (state) {
        question = state.question;
        correctAnswersCount = state.correctAnswersCount;
        incorrectAnswersCount = state.incorrectAnswersCount;
        totalAnswersCount = state.totalAnswersCount;
      },
      orElse: () {
        correctAnswersCount = 0;
        incorrectAnswersCount = 0;
        totalAnswersCount = 0;
      },
    );
    _timerStreamSubscription?.cancel();
    add(QuizEvent.showResponse(
      question: question,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      timeLeft: timeLeft,
      response: response,
    ));
    _timerStreamSubscription = timer.listen((_) {
      timeLeft = timeLeft - refreshRate;
      add(QuizEvent.showResponse(
        question: question,
        correctAnswersCount: correctAnswersCount,
        incorrectAnswersCount: incorrectAnswersCount,
        totalAnswersCount: totalAnswersCount,
        timeLeft: timeLeft,
        response: response,
      ));
      if (timeLeft <= Duration.zero) {
        completer.complete();
        _timerStreamSubscription.cancel();
      }
    });
    return completer.future;
  }

  Future<void> correctResponse() async {
    await state.maybeMap(
      showingQuestion: (showingQuestionState) async =>
          await yieldResponseState(Response.DoneRight),
      orElse: () => state,
    );
  }

  Future<void> incorrectResponse() async {
    await state.maybeMap(
      showingQuestion: (showingQuestionState) async =>
          await yieldResponseState(Response.DoneWrong),
      orElse: () => state,
    );
  }

  Future<void> timeUp() async {
    await state.maybeMap(
      showingQuestion: (showingQuestionState) async {
        return yieldResponseState(Response.TimeUp);
      },
      orElse: () => state,
    );
  }
}
