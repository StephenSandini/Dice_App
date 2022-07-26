import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  //Constructor
  const StartScreen({Key? key}) : super(key: key);
  //Name to Navigate to this screen
  static const routeName = '/startScreen';

  @override
  State<StatefulWidget> createState() {
    return _StartState();
  }
}

//State Object
class _StartState extends State<StartScreen> {
  
  late _Controller con;

//Initializes State
  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Screen'),
      ),
      body: const Text('Start Screen'),
    );
  }
}

//Local Controller
class _Controller {
  //This will be defined after the constructor builds hence why we use keyword late
  late _StartState state;
  _Controller(this.state);
}
