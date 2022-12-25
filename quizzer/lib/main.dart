import 'package:flutter/material.dart';
import 'package:quizzer/quiz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quiz quizbrain = Quiz();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Quizzer1(),
      ),
    );
  }
}

class Quizzer1 extends StatefulWidget {
  const Quizzer1({super.key});

  @override
  State<Quizzer1> createState() => _Quizzer1State();
}

class _Quizzer1State extends State<Quizzer1> {
  List<Icon> scorekeeper = [];

  void check(bool userPickedanswer) {
    bool ans = quizbrain.getAnswerText();
    setState(() {
      if (quizbrain.isFinished() == true) {
        Alert(
                context: context,
                title: "You Successfully Completed quiz",
                desc: "Thank you")
            .show();
        quizbrain.reset();
        scorekeeper = [];
      } else {
        if (ans == userPickedanswer) {
          scorekeeper.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scorekeeper.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizbrain.nextque();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Container(
              child: Text(
                quizbrain.getQuestionText(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                check(true);
              },
              child: Container(
                color: Colors.green,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                check(false);
              },
              child: Container(
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}
