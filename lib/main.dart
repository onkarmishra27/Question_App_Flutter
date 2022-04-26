import 'package:flutter/material.dart';
import 'package:flutter_app_dummy/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite Color?',
      'answers': ['black', 'red', 'green', 'orange'],
    },
    {
      'questionText': 'what\'s your favrite Animal?',
      'answers': ['rabbit', 'snake', 'lion', 'elephant']
    },
    {
      'questionText': 'what\'s your favourite palce to Visit?',
      'answers': ['Bangalore', 'Mumbai', 'Patna', 'Delhi']
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more Questions!');
    } else {
      print('No more Questions.');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
