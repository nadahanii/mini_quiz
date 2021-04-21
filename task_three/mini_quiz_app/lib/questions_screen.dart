import 'package:flutter/material.dart';
import 'package:mini_quiz_app/ending.dart';
import 'package:mini_quiz_app/quiz%20model/quiz_questions.dart';

// ignore: camel_case_types
class questions_screen extends StatefulWidget {
  final int index;
  questions_screen(this.index);
  @override
  _State createState() => _State();
}

class _State extends State<questions_screen> {
  // ignore: non_constant_identifier_names
  quiz_questions current_quiz = quiz_questions();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            current_quiz.quiz[widget.index].question,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.indigo.shade900,
              fontWeight: FontWeight.w500,
            ),
          ),
          Visibility(
            child: Icon(
              Icons.check,
              color: Colors.green.shade700,
              size: 50.0,
            ),
            visible: isCorrect,
            replacement: Visibility(
              child: Icon(
                Icons.clear,
                color: Colors.red.shade700,
                size: 50.0,
              ),
              visible: isWrong,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  if (current_quiz.quiz[widget.index].answer == true)
                    setState(() {
                      isCorrect = true;
                      isWrong = false;
                    });
                  else
                    setState(() {
                      isCorrect = false;
                      isWrong = true;
                    });
                },
                child: Container(
                  width: 100.0,
                  height: 47.0,
                  child: Text(
                    'True',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 31.5,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  if (current_quiz.quiz[widget.index].answer == false)
                    setState(() {
                      isWrong = true;
                      isCorrect = false;
                    });
                  else
                    setState(() {
                      isWrong = false;
                      isCorrect = true;
                    });
                },
                child: Container(
                  width: 100.0,
                  height: 47.0,
                  child: Text(
                    'False',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 31.5,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {
              if (widget.index == 5)
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ending()));
              else
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            questions_screen(widget.index + 1)));
            },
            child: Container(
              width: 250.0,
              height: 47.0,
              child: Text(
                'Next Question',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.5,
                  color: Colors.cyan.shade100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.indigo.shade900,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
