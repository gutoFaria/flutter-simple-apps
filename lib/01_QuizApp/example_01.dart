import 'package:flutter/material.dart';
import 'package:flutter_course/01_QuizApp/data_quiz/questions.dart';
import 'package:flutter_course/01_QuizApp/widgets_quiz/answer.dart';
import 'package:flutter_course/01_QuizApp/widgets_quiz/question.dart';

class Example01 extends StatefulWidget {
  const Example01({super.key});

  @override
  State<Example01> createState() => _Example01State();
}

class _Example01State extends State<Example01> {

  int index = 0;

  

  void increment(){
    
    setState(() {
      index += 1;
    });

    if(index == questions.length){
      index = 0;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Quiz Example 01', style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Question(questions: questions, index: index),
            ...(questions[index]['answer'] as List<String>).map((answer){
              return Answer(answer: answer, pointToOnPress: increment);
            }),
          ],
        ),
      ),
    );
  }
}