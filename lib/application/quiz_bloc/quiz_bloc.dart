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

  QuizBloc(this._questionGenerator);

  @override
  QuizState get initialState => QuizState.initial();

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    yield* event.map(
      onStart: (e) async* {
        Question question = await newQuestion();
        yield state.copyWith(
          question: question,
          questionLoading: false,
          gameStarted: true,
        );
      },
      onYesButtonPressed: (e) async* {
        if(state.questionLoading){
          yield state;
        }else{
          yield state.copyWith(
            questionLoading: true,
          );
          if(state.question.isTrue){
            yield await correctResponse();
          }else{
            yield await incorrectResponse();
          }
        }
      },
      onNoButtonPressed: (e) async* {
        if(state.questionLoading){
          yield state;
        }else{
          yield state.copyWith(
            questionLoading: true,
          );
          if(!state.question.isTrue){
            yield await correctResponse();
          }else{
            yield await incorrectResponse();
          }
        }
      }
    );
  }

  Future<Question> newQuestion(){
    return _questionGenerator.generateQuestion();
  }

  Future<QuizState> correctResponse() async {
    Question question = await newQuestion();
    return state.copyWith(
      question: question,
      questionLoading: false,
      correctAnswers: state.correctAnswers + 1,
      totalAnswers: state.totalAnswers + 1,
    );
  }

  Future<QuizState> incorrectResponse() async {
    Question question = await newQuestion();
    return state.copyWith(
      question: question,
      questionLoading: false,
      totalAnswers: state.totalAnswers + 1,
    );
  }
}
