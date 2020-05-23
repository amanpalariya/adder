import 'package:adder_game/domain/i_question_generator.dart';
import 'package:adder_game/domain/question.dart';
import 'package:adder_game/infrastructure/core/random_generator.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@RegisterAs(IQuestionGenerator, env: Environment.prod)
///This class generates questions that contain larger operands (both in number and value)
class ToughQuestionGenerator implements IQuestionGenerator{

  RandomGenerator _randomGenerator;

  ToughQuestionGenerator(this._randomGenerator);

  int _getRandomNumber(){
    int max = 50;
    return _randomGenerator.getRandomIntegerBetween(-max-1, max+1);
  }

  int _numberOfOperands(){
    return _randomGenerator.getRandomIntegerBetween(1, 5);
  }

  int _getConfusingAnswer(List<int> operands){
    assert(operands.length>=2);
    bool giveWrongAnswer = _randomGenerator.randomBool();
    int correctAnswer = 0;
    int previousValue = operands.first;
    int maxDeviation = 0;
    for(int value in operands){
      maxDeviation += (value.abs() - previousValue.abs()).abs();
      correctAnswer += value;
    }
    int deviation = 0;
    if(giveWrongAnswer){
      deviation = (_randomGenerator.randomBool()?1:-1)*(maxDeviation);
    }
    return correctAnswer + deviation;
  }

  Future<void> wait(int milliseconds) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
  }

  Future<void> _randomWait(int maxWaitInMilliseconds) async {
    int waitTime = _randomGenerator.getPositiveNumberLessThan(maxWaitInMilliseconds);
    await wait(waitTime);
  }

  @override
  Future<Question> generateQuestion() async {
    List<int> operands = [];
    int numberOfOperands = _numberOfOperands();
    int correctAnswer = 0;
    for(int i = 0; i < numberOfOperands; i++){
      int operand = _getRandomNumber();
      operands.add(operand);
      correctAnswer += operand;
    }
    int maybeWrongAnswer = _getConfusingAnswer(operands);
    await _randomWait(500);
    return Question(
      operands: operands,
      correctAnswer: correctAnswer,
      maybeAnswer: maybeWrongAnswer,
    );
  }
}