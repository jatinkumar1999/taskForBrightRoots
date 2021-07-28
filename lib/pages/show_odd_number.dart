import 'package:flutter/material.dart';
class ShowOddNumber extends StatelessWidget {
  final List<int> oddNumber;
  const ShowOddNumber({
    Key? key,
    required this.oddNumber,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children:
              oddNumber.map((e) => Text(e.toString())).toList()),
    );
  }
}
