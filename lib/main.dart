import 'package:dice_template_app/viewscreen/businesscard_screen.dart';
import 'package:dice_template_app/viewscreen/imagedemo_screen.dart';
import 'package:dice_template_app/viewscreen/materialdesign_screen.dart';
import 'package:dice_template_app/viewscreen/start_screen.dart';
import 'package:flutter/material.dart';

import 'model/constant.dart';

void main() {
  runApp(const Dice_App());
}

class Dice_App extends StatelessWidget {
  const Dice_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //For the Routing of MaterialApp
    return MaterialApp(
      //Displays or Removes the Debug Banner
      debugShowCheckedModeBanner: Constant.devMode,
      theme: ThemeData(
        fontFamily: 'Orbitron',
        //Changes between dark and light mode
        brightness: Brightness.dark,
        //Overrides text theme, in this case we are doing headline 1
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 64.0,
            color: Colors.blueGrey,
          ),
          button: TextStyle( fontSize: 28.0,),
        ),
      ),
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
