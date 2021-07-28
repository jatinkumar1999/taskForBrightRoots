import 'package:flutter/material.dart';

class ShowEvenNumber extends StatelessWidget {
  final List<int> evenNumber;
  const ShowEvenNumber({
    Key? key,
    required this.evenNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: evenNumber.map((e) => Text(e.toString())).toList()),
    );
  }
}
