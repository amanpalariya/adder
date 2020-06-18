import 'dart:async';

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
  final Duration updatePeriod = const Duration(milliseconds: 100);
  final Duration responseDisplayDuration = const Duration(seconds: 1);
  StreamSubscription _timerStreamSubscription;

  QuizBloc(this._questionGenerator);

  @override
  QuizState get initialState => QuizState.initial();

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    yield* event.map(start: (e) async* {
      yield QuizState.loadingQuestion(
        correctAnswersCount: 0,
        incorrectAnswersCount: 0,
        totalAnswersCount: 0,
      );
      showNewQuestion();
    }, onYesButtonPressed: (e) async* {
      yield state.maybeMap(
        showingQuestion: (showingQuestionState) {
          _timerStreamSubscription?.cancel();
          if (showingQuestionState.question.isTrue) {
            return correctResponse();
          } else {
            return incorrectResponse();
          }
        },
        orElse: () => state,
      );
      await Future.delayed(responseDisplayDuration);
      yield* showNewQuestion();
    }, onNoButtonPressed: (e) async* {
      yield state.maybeMap(
        showingQuestion: (showingQuestionState) {
          _timerStreamSubscription?.cancel();
          if (!showingQuestionState.question.isTrue) {
            return correctResponse();
          } else {
            return incorrectResponse();
          }
        },
        orElse: () => state,
      );
      await Future.delayed(responseDisplayDuration);
      yield* showNewQuestion();
    });
  }

  Future<Question> newQuestion() async {
    return await _questionGenerator.generateQuestion();
  }

  Stream<QuizState> showNewQuestion(
      {int correctAnswersCount = 0,
      int incorrectAnswersCount = 0,
      int totalAnswersCount = 0}) async* {
    Question question = await newQuestion();
    Stream timer = Stream.periodic(updatePeriod);
    Duration timeLeft = _questionGenerator.maxTimePerQuestion;
    _timerStreamSubscription?.cancel();
    _timerStreamSubscription = timer.listen((_) async* {
      yield QuizState.showingQuestion(
        question: question,
        correctAnswersCount: 0,
        incorrectAnswersCount: 0,
        totalAnswersCount: 0,
        timeLeft: timeLeft,
      );
      timeLeft = timeLeft - updatePeriod;
      if (timeLeft <= Duration.zero) {
        yield timeUp();
        _timerStreamSubscription.cancel();
      }
    });
  }

  QuizState correctResponse() {
    return state.maybeMap(
      showingQuestion: (showingQuestionState) => QuizState.showingResponse(
        question: showingQuestionState.question,
        correctAnswersCount: showingQuestionState.correctAnswersCount + 1,
        incorrectAnswersCount: showingQuestionState.incorrectAnswersCount,
        totalAnswersCount: showingQuestionState.totalAnswersCount + 1,
        response: Response.DoneRight,
      ),
      orElse: () => state,
    );
  }

  QuizState incorrectResponse() {
    return state.maybeMap(
      showingQuestion: (showingQuestionState) => QuizState.showingResponse(
        question: showingQuestionState.question,
        correctAnswersCount: showingQuestionState.correctAnswersCount,
        incorrectAnswersCount: showingQuestionState.incorrectAnswersCount + 1,
        totalAnswersCount: showingQuestionState.totalAnswersCount + 1,
        response: Response.DoneRight,
      ),
      orElse: () => state,
    );
  }

  QuizState timeUp() {
    return state.maybeMap(
      showingQuestion: (showingQuestionState) => QuizState.showingResponse(
        question: showingQuestionState.question,
        correctAnswersCount: showingQuestionState.correctAnswersCount,
        incorrectAnswersCount: showingQuestionState.incorrectAnswersCount,
        totalAnswersCount: showingQuestionState.totalAnswersCount + 1,
        response: Response.DoneRight,
      ),
      orElse: () => state,
    );
  }
}
