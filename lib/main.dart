import 'package:dice_template_app/viewscreen/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dice_App());
}

class Dice_App extends StatelessWidget {
  const Dice_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //For the Routing of MaterialApp
    return MaterialApp(
      //Initial Route when App Starts
      initialRoute: StartScreen.routeName,
      //Routing has a key value pair
      //Screen.name of route : function
      routes: {
        StartScreen.routeName: (BuildContext context) => const StartScreen(),
      },
    );
  }
}

Widget f1(BuildContext context) {
  return const StartScreen();
}
