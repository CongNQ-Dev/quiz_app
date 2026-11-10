import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(127, 248, 247, 247),
          ),
          SizedBox(height: 80),
          Text(
            "Learning Flutter Fun way",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            icon: Icon(Icons.arrow_right_alt),
            label: Text("Start quiz"),
          ),
        ],
      ),
    );
  }
}
