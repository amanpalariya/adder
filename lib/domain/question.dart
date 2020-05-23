import 'package:meta/meta.dart';

class Question{
  final List<int> operands;
  final int maybeAnswer;
  final int correctAnswer;

  bool get isTrue => correctAnswer==maybeAnswer;
  
  const Question({@required this.operands, @required this.maybeAnswer, @required this.correctAnswer});

  String _putNegativeValueInBracket(int value){
    String valueString = "$value";
    if(value.isNegative){
      valueString = "(" + valueString + ")";
    }
    return valueString;
  }

  @override
  String toString() {
    String string = _putNegativeValueInBracket(operands.first);
    for(int i = 1; i < operands.length; i++){
      int value = operands[i];
      string += " + ${_putNegativeValueInBracket(value)}";
    }
    string += " = $maybeAnswer";
    return string;
  }
}