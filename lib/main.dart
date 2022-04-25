import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color',
      'what\'s your favrite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer2'),
            onPressed: () => print('Answer 2 choosen for the Question'),
          ),
          RaisedButton(
            child: Text('Answer3'),
            onPressed: () {
              print('Answer 3 choosen for the Question');
            },
          ),
        ]),
      ),
    );
  }
}
