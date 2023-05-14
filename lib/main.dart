import 'package:develpoment/home.dart';
import 'package:develpoment/question.dart';
import 'package:develpoment/val_context_tile.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const questions = [
    {"questions": "1", "values": "2"},
    {"questions": "1", "values": "2"}
  ];

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
