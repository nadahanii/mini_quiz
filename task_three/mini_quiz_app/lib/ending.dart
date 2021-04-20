import 'package:flutter/material.dart';

class ending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber.shade200,
        body: Center(
          child: Column(
            children: [
              Container(
                width: 300.0,
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/679b3cfbdee9bdf8eecdaacacfe8e153.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Congratulations! You\'ve reached the end of our quiz , and you deserve millions of schrute bucks.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.indigo.shade900,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
