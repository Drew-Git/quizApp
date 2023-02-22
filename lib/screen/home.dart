import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('My Quiz App'),
        backgroundColor: Colors.deepPurple,
        leading: Container(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/quiz.png',
              width: width * 0.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.024),
          ),
          Text('flutter quiz App',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const Text(
            'It`s guide before solving quiz. \n Read properly and press the solve quiz.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }
}
