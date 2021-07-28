import 'package:flutter/material.dart';
import 'package:task/pages/show_even_number.dart';
import 'package:task/pages/show_odd_number.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0; //! for enen number
  int j = 1; //*for odd number
  List<int> even = [];
  List<int> odd = [];

  _evennumber() {
    while (i <= 100) {
      print(i);
      even.add(i);
      i = i + 2;
    }
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ShowEvenNumber(evenNumber: even)));
  }

  _oddnumber() {
    while (j <= 100) {
      print(j);
      odd.add(j);
      j = j + 2;
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowOddNumber(oddNumber: odd)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _evennumber,
              child: Text("Show Even Numbers"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _oddnumber,
              child: Text("Show odd Numbers"),
            ),
          ],
        ),
      ),
    );
  }
}
