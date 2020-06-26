// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:adder_game/infrastructure/core/random_generator.dart';
import 'package:adder_game/infrastructure/simple_question_generator.dart';
import 'package:adder_game/domain/i_question_generator.dart';
import 'package:adder_game/infrastructure/tough_question_generator.dart';
import 'package:adder_game/application/quiz_bloc/quiz_bloc.dart';
import 'package:adder_game/domain/game_settings.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<RandomGenerator>(() => RandomGenerator());
  g.registerFactory<QuizBloc>(
      () => QuizBloc(g<IQuestionGenerator>(), gameSettings: g<GameSettings>()));

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<IQuestionGenerator>(
        () => SimpleQuestionGenerator(g<RandomGenerator>()));
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IQuestionGenerator>(
        () => ToughQuestionGenerator(g<RandomGenerator>()));
  }
}
