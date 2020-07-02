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
  final GameSettings gameSettings = GameSettings(
    difficulty: GameDifficulty.Medium,
    maxTimePerQuestion: Duration(seconds: 5),
  );
  final Duration refreshRate = const Duration(milliseconds: 10);
  StreamSubscription _timerStreamSubscription;

  QuizBloc(this._questionGenerator, );

  @override
  QuizState get initialState => QuizState.initial();

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    yield* event.map(start: (event) async* {
      yield QuizState.loadingQuestion(
        correctAnswersCount: 0,
        incorrectAnswersCount: 0,
        totalAnswersCount: 0,
        totalQuestionsCount: gameSettings.totalNumberOfQuestions,
      );
      yieldNewQuestionState();
    }, onYesButtonPressed: (event) async* {
      state.maybeMap(
        showingQuestion: (showingQuestionState) {
          _timerStreamSubscription?.cancel();
          if (showingQuestionState.question.isTrue) {
            correctResponse().then((_) => yieldNewQuestionStateOrFinishedState());
          } else {
            incorrectResponse().then((_) => yieldNewQuestionStateOrFinishedState());
          }
        },
        orElse: () => state,
      );
    }, onNoButtonPressed: (event) async* {
      state.maybeMap(
        showingQuestion: (showingQuestionState) {
          _timerStreamSubscription?.cancel();
          if (!showingQuestionState.question.isTrue) {
            correctResponse().then((_) => yieldNewQuestionStateOrFinishedState());
          } else {
            incorrectResponse().then((_) => yieldNewQuestionStateOrFinishedState());
          }
        },
        orElse: () => state,
      );
    }, _timeUp: (event) async* {
      timeUp().then((_) => yieldNewQuestionStateOrFinishedState());
    }, _showQuestion: (event) async* {
      yield QuizState.showingQuestion(
        question: event.question,
        correctAnswersCount: event.correctAnswersCount,
        incorrectAnswersCount: event.incorrectAnswersCount,
        totalAnswersCount: event.totalAnswersCount,
        totalQuestionsCount: gameSettings.totalNumberOfQuestions,
        timeLeft: event.timeLeft,
        maxTimePerQuestion: gameSettings.maxTimePerQuestion,
      );
    }, _showResponse: (event) async* {
      yield QuizState.showingResponse(
        question: event.question,
        correctAnswersCount: event.correctAnswersCount,
        incorrectAnswersCount: event.incorrectAnswersCount,
        totalAnswersCount: event.totalAnswersCount,
        totalQuestionsCount: gameSettings.totalNumberOfQuestions,
        timeLeft: event.timeLeft,
        totalTime: gameSettings.responseDisplayDuration,
        response: event.response,
      );
    }, _finish: (event) async* {
      yield QuizState.finished(
        correctAnswersCount: event.correctAnswersCount,
        incorrectAnswersCount: event.incorrectAnswersCount,
        totalAnswersCount: event.totalAnswersCount,
        totalQuestionsCount: gameSettings.totalNumberOfQuestions,
      );
    });
  }

  Future<Question> newQuestion() async {
    return await _questionGenerator
        .generateQuestionOfDifficulty(gameSettings.difficulty);
  }

  void yieldNewQuestionStateOrFinishedState() {
    int totalAnswersCount = 0;
    state.maybeMap(
      showingQuestion: (state) {
        totalAnswersCount = state.totalAnswersCount;
      },
      showingResponse: (state) {
        totalAnswersCount = state.totalAnswersCount;
      },
      orElse: () {},
    );
    if (totalAnswersCount == gameSettings.totalNumberOfQuestions) {
      yieldFinishedState();
    } else {
      yieldNewQuestionState();
    }
  }

  void yieldFinishedState() async {
    int correctAnswersCount = 0;
    int incorrectAnswersCount = 0;
    int totalAnswersCount = 0;
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
    add(QuizEvent._finish(
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
    ));
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
    add(QuizEvent._showQuestion(
      question: question,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      timeLeft: timeLeft,
    ));
    _timerStreamSubscription = timer.listen((_) {
      timeLeft = timeLeft - refreshRate;
      add(QuizEvent._showQuestion(
        question: question,
        correctAnswersCount: correctAnswersCount,
        incorrectAnswersCount: incorrectAnswersCount,
        totalAnswersCount: totalAnswersCount,
        timeLeft: timeLeft,
      ));
      if (timeLeft <= Duration.zero) {
        add(QuizEvent._timeUp());
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
    add(QuizEvent._showResponse(
      question: question,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      timeLeft: timeLeft,
      response: response,
    ));
    _timerStreamSubscription = timer.listen((_) {
      timeLeft = timeLeft - refreshRate;
      add(QuizEvent._showResponse(
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
