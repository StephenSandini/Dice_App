import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget {
  static const routeName = '/imageDemoScreen';

  const ImageDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Demo'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.amberAccent,
            height: 300.0,
            child: Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/513zm8ofKdS._SX218_BO1,204,203,200_QL40_FMwebp_.jpg'),
          ),
          Icon(Icons.free_breakfast, size: 300.0, color: Colors.teal[200]),
          Container(
            height: 300.0,
            color: Colors.blueAccent,
            child: Image.network(
                'https://m.media-amazon.com/images/I/610NJWp32JS._AC_UY218_.jpg'),
          ),
          Container(
            color: Colors.cyanAccent,
            height: 125.0,
            child: Image.asset('images/dice_1.jpeg'),
          ),
          Container(
            color: Colors.purpleAccent,
            height: 125.0,
            child: Image.asset('images/dice_2.jpeg'),
          ),
          Container(
            color: Colors.cyanAccent,
            height: 125.0,
            child: Image.asset('images/dice_3.jpeg'),
          ),
          Container(
            color: Colors.purpleAccent,
            height: 125.0,
            child: Image.asset('images/dice_4.jpeg'),
          ),
          Container(
            color: Colors.cyanAccent,
            height: 125.0,
            child: Image.asset('images/dice_5.jpeg'),
          ),
          Container(
            color: Colors.purpleAccent,
            height: 125.0,
            child: Image.asset('images/dice_6.jpeg'),
          ),
        ],
      ),
    );
  }
}
