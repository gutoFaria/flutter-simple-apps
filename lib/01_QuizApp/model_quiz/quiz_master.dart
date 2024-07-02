import 'package:flutter_course/01_QuizApp/model_quiz/question_model.dart';

class QuizMaster {
  int _indexNumber = 0;

  final List<QuestionModel> _quiz = [
    QuestionModel('29 - 3 = 26', true),
    QuestionModel('711 - 4 = 677 ', false),
    QuestionModel('455 * 3 = 1365', true),
    QuestionModel('76 / 8 = 9.5', true),
    QuestionModel('Many Thanks, press any button to end the quiz', true),
  ];

  void nextQuestion(){
    if(_indexNumber <= _quiz.length){
      _indexNumber++;
    }
  }

  String getQuestion(){
    return _quiz[_indexNumber].question;
  }

  bool getAnswer(){
    return _quiz[_indexNumber].answer;
  } 

  bool isFinished(){
    if(_indexNumber >= _quiz.length -1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _indexNumber = 0;
  }
}
