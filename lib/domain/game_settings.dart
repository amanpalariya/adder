import 'package:adder_game/domain/i_question_generator.dart';
import 'package:flutter/foundation.dart';

enum GameDifficulty { Easy, Medium, Hard }

class GameSettings {
  final Duration maxTimePerQuestion;
  final Duration responseDisplayDuration;
  final GameDifficulty difficulty;

  GameSettings._({
    this.maxTimePerQuestion,
    this.responseDisplayDuration = const Duration(seconds: 1),
    this.difficulty,
  });

  factory GameSettings.easy() {
    return GameSettings._(
      difficulty: GameDifficulty.Easy,
      maxTimePerQuestion: const Duration(seconds: 10),
    );
  }

  factory GameSettings.medium() {
    return GameSettings._(
      difficulty: GameDifficulty.Medium,
      maxTimePerQuestion: const Duration(seconds: 10),
    );
  }

  factory GameSettings.hard() {
    return GameSettings._(
      difficulty: GameDifficulty.Hard,
      maxTimePerQuestion: const Duration(seconds: 10),
    );
  }
}
