import 'package:flutter/material.dart';
import 'package:mini_quiz_app/questions_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber.shade200,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 300.0,
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  image: DecorationImage(
                    image: AssetImage('assets/wp4013883.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Welcome to \'the office 101\' quiz , let\'s find out how much dunder mifflin-ness do you got!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.indigo.shade900,
                  fontWeight: FontWeight.w500,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questions_screen(0)));
                },
                child: Container(
                  width: 230.0,
                  height: 57.0,
                  child: Text(
                    'Start Quiz',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 41.5,
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
          ),
        ),
      ),
    );
  }
}
