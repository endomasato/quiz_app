import 'package:flutter/material.dart';



class Question extends StatefulWidget {

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  List<String> questions = [
  '第2問',
  '第3問',
  '第4問',
  '第5問',
  '第6問',
  '第7問',
  '第8問',
  '第9問',
  '第10問',
  ];
  List<bool> answers = [
  true,
  false,
  true,
  true,
  false,
  false,
  true,
  true,
  false,
  false
  ];
  int questionNumber = 0;
  int questionOfCorrectAnswer = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFe91e63),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'www',
                    style: TextStyle(
                    fontSize: 30
                  ),),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: (){}, child: Text(
                '正しい',style: TextStyle(fontSize: 20),
              ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )),

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: (){}, child: Text(
                '間違い', style: TextStyle(fontSize: 20),
              ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )),
              ),
            ),
          ),

        ],
      ),
      ),
    );

  }
}
