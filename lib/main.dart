import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text(
            'This is a true or false Quiz app',
          ),
        ),
        body: quizBody(),
      ),
    );
  }
}

class quizBody extends StatefulWidget {
  const quizBody({Key? key}) : super(key: key);

  @override
  _quizBodyState createState() => _quizBodyState();
}

class _quizBodyState extends State<quizBody> {
// List<Icon> scoreKeeper()[Icon(Icons.check, color: Colors.green,),];

  List<String> questions = [''];
  List<Icon> scoreKeeper = [
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Center(
                child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'This is where the question will be.',
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))),
          ),
          Expanded(
            child: SizedBox(
              width: 900,
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: Colors.green,
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text('True')),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SizedBox(
              width: 900,
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    backgroundColor: Colors.red,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('True')),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
