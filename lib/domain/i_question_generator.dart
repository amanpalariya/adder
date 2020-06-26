import 'package:adder_game/domain/game_settings.dart';
import 'package:adder_game/domain/question.dart';

abstract class IQuestionGenerator {
  Future<Question> generateQuestionOfDifficulty(GameDifficulty difficulty);
}
