import 'package:adder_game/domain/question.dart';

abstract class IQuestionGenerator {
  Duration get maxTimePerQuestion;
  Future<Question> generateQuestion();
}
