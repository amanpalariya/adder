import 'package:adder_game/injection.dart';
import 'package:adder_game/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main(){
  configureInjection(environment: Environment.prod);
  runApp(AppWidget());
}