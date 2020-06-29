part of 'quiz_bloc.dart';

@freezed
abstract class QuizEvent with _$QuizEvent {
  const factory QuizEvent.start() = _Start;
  const factory QuizEvent.onYesButtonPressed() = _OnYesButtonPressed;
  const factory QuizEvent.onNoButtonPressed() = _OnNoButtonPressed;
  const factory QuizEvent.showQuestion({
    @required Question question,
    @required int correctAnswersCount,
    @required int incorrectAnswersCount,
    @required int totalAnswersCount,
    @required Duration timeLeft,
  }) = _ShowQuestion;
  const factory QuizEvent.showResponse({
    @required Question question,
    @required int correctAnswersCount,
    @required int incorrectAnswersCount,
    @required int totalAnswersCount,
    @required Duration timeLeft,
    @required Response response,
  }) = _ShowResponse;
  const factory QuizEvent.timeUp() = _TimeUp;
  const factory QuizEvent.finish({
    @required int correctAnswersCount,
    @required int incorrectAnswersCount,
    @required int totalAnswersCount,
  }) = _Finish;
}
