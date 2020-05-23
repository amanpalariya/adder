import 'package:adder_game/domain/question.dart';

abstract class IQuestionGenerator{
  Future<Question> generateQuestion();
}