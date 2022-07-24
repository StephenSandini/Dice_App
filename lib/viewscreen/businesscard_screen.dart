import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({Key? key}) : super(key: key);

  static const routeName = '/businessCardScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Mobile Business Card'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset('images/personal_photo.jfif'),
                    ),
                  ),
                  Positioned(
                    right: 5.0,
                    bottom: 5.0,
                    child: Image.asset(
                      'images/qr-code.png',
                      height: 75.0,
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 40.0,
                color: Colors.lightBlueAccent,
              ),
              Text(
                'Name',
                style: Theme.of(context).textTheme.headline6,
                
              ),
              Text(
                'Stephen Sandini',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Title',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Software Developer',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Department',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                '72nd ABW',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(width: 20.0,),
                  Text(
                    'stsandini@gmail.com',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
                  Row(
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(width: 20.0,),
                  Text(
                    '+1 (405) 708-9659',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
