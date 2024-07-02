import 'package:flutter/material.dart';
import 'package:flutter_course/01_QuizApp/model_quiz/quiz_master.dart';
import 'package:flutter_course/01_QuizApp/widgets_quiz/quiz_page.dart';
import 'package:google_fonts/google_fonts.dart';


QuizMaster quizMaster = QuizMaster();

class Example02 extends StatelessWidget {
  const Example02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Example 02',
          style: GoogleFonts.lacquer(
            textStyle: TextStyle(
              color: Colors.purple.shade600,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            )
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        )
      ),
    );
  }
}