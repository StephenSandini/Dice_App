import 'package:flutter/material.dart';

void main(){
  runApp(const Dice_App());
}

class Dice_App extends StatelessWidget {
  
  const Dice_App({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Text('Hello World!'),
    );
  }
}