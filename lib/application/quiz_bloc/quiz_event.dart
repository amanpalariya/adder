part of 'quiz_bloc.dart';

@freezed
abstract class QuizEvent with _$QuizEvent{
  const factory QuizEvent.onStart() = _OnStart;
  const factory QuizEvent.onYesButtonPressed() = _OnYesButtonPressed;
  const factory QuizEvent.onNoButtonPressed() = _OnNoButtonPressed;
}
