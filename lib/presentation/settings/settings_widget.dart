import 'package:adder_game/presentation/settings/settings_page.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Settings"),
      ),
      body: SettingsPage(),
    );
  }
}
