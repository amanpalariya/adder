import 'package:adder_game/domain/i_question_generator.dart';
import 'package:adder_game/domain/question.dart';
import 'package:adder_game/infrastructure/core/random_generator.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@RegisterAs(IQuestionGenerator, env: Environment.dev)

///This class generates questions that contain only two single-digit positive numbers
class SimpleQuestionGenerator implements IQuestionGenerator {
  RandomGenerator _randomGenerator;

  SimpleQuestionGenerator(this._randomGenerator);

  int _getRandomNumber() {
    return _randomGenerator.getRandomIntegerBetween(1, 9);
  }

  int _getConfusingAnswer(int operand1, int operand2) {
    bool giveWrongAnswer = _randomGenerator.randomBool();
    int deviation = 0;
    if (giveWrongAnswer) {
      deviation = (_randomGenerator.randomBool() ? 1 : -1) *
          ((operand1 - operand2).abs() + 2);
    }
    return (operand1 + operand2) + deviation;
  }

  Future<void> wait(int milliseconds) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
  }

  @override
  Future<Question> generateQuestion() async {
    int operand1 = _getRandomNumber();
    int operand2 = _getRandomNumber();
    int correctAnswer = operand1 + operand2;
    int maybeWrongAnswer = _getConfusingAnswer(operand1, operand2);
    List<int> operands = [operand1, operand2];
    await wait(500);
    return Question(
      operands: operands,
      correctAnswer: correctAnswer,
      maybeAnswer: maybeWrongAnswer,
    );
  }

  @override
  Duration get maxTimePerQuestion => const Duration(milliseconds: 10000);
}
