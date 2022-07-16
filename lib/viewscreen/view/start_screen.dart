import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //Name for mapping to this screen
  static const routeName = '/startScreen';

  //Constant Constructor
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Menu'),
      ),
      body: const Text('Start Screen'),
    );
  }
}
