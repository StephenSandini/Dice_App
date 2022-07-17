import 'package:dice_template_app/viewscreen/view/view_util.dart';
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
        actions: [
          IconButton(
            onPressed: () => showSnackBar(
              context: context,
              message: 'Alarm Button Pressed',
            ),
            icon: const Icon(Icons.alarm),
          ),
          IconButton(
            onPressed: () => showSnackBar(
              context: context,
              message: 'Message Button Pressed',
            ),
            icon: const Icon(Icons.message),
          ),
        ],
      ),
      body: const Text('Start Screen'),
    );
  }
}
