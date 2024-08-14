import 'package:flutter/material.dart';

void main(){
  runApp(LiveTestApp());
}

class LiveTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Text Styling',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Text Styling'),
        ),
        body: Container(
          color: Color(0xFFFFFBFE),
          child: Center(
            child: TextStylingScreen(),
          ),
        ),
      ),
    );
  }
}

class TextStylingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Flutter Text Styling',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          'Experiment with font size',
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        //Text Button
        TextButton(
          onPressed: (){
            //Display Snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('You clicked the button!'),
              ),
            );
          },
          child: Text('Click Me'),
        ),
      ],
    );
  }
}