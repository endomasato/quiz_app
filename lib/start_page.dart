import 'package:flutter/material.dart';
import 'package:quiz_app/question_page.dart';
import 'question_page.dart';

class Start extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFe91e63),
        ),
        backgroundColor: Color(0xFFF5F5F6),
        body: SafeArea(
          child: StartPage(),
        ),
      ),
    );
  }
}

class StartPage extends StatefulWidget {
   @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xFFccdb37),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Question()));
            },
          child: Text('始めるよ！'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 20),
              ),
            ),

            ),



        ),



      );

  }
}

