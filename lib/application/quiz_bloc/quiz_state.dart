part of 'quiz_bloc.dart';

@freezed
abstract class QuizState with _$QuizState{
  const factory QuizState({
    @required Question question,
    @required bool gameStarted,
    @required bool questionLoading,
    @required int correctAnswers,
    @required int totalAnswers,
  }) = _QuizState;

  factory QuizState.initial() => QuizState(
    question: Question(operands: [2, 2], maybeAnswer: 4, correctAnswer: 4),
    gameStarted: false,
    questionLoading: true,
    correctAnswers: 0,
    totalAnswers: 0,
  );
}
