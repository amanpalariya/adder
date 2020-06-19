part of 'quiz_bloc.dart';

enum Response { DoneRight, DoneWrong, TimeUp }

@freezed
abstract class QuizState with _$QuizState {
  const factory QuizState.showingQuestion({
    @required Question question,
    @required Duration timeLeft,
    @required Duration maxTimePerQuestion,
    @required int correctAnswersCount,
    @required int incorrectAnswersCount,
    @required int totalAnswersCount,
  }) = _ShowingQuestion;

  factory QuizState.initial() = _Initial;

  factory QuizState.loadingQuestion({
    @required int correctAnswersCount,
    @required int incorrectAnswersCount,
    @required int totalAnswersCount,
  }) = _LoadingQuestion;

  factory QuizState.showingResponse({
    @required Question question,
    @required int correctAnswersCount,
    @required int incorrectAnswersCount,
    @required int totalAnswersCount,
    @required Response response,
  }) = _ShowingResponse;
}
