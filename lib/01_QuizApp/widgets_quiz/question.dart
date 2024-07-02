import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.questions, required this.index});

  final List<Map<String, Object>> questions;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${questions[index]['question']}',
      style: GoogleFonts.laila(
        textStyle: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        )
      ),
    );
  }
}