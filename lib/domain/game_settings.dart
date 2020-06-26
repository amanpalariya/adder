enum GameDifficulty { Easy, Medium, Hard }

class GameSettings {
  final Duration maxTimePerQuestion;
  final Duration responseDisplayDuration;
  final int totalNumberOfQuestions;
  final GameDifficulty difficulty;

  GameSettings({
    this.totalNumberOfQuestions = 10,
    this.maxTimePerQuestion = const Duration(seconds: 10),
    this.responseDisplayDuration = const Duration(seconds: 1),
    this.difficulty,
  });
}
