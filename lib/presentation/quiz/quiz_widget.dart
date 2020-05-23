import 'package:adder_game/application/quiz_bloc/quiz_bloc.dart';
import 'package:adder_game/injection.dart';
import 'package:adder_game/presentation/quiz/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: BlocProvider<QuizBloc>(
        create: (_) => getIt<QuizBloc>(),
        child: QuizPage(),
      ),
    );
  }
}