import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(color: Colors.black),
      ),
      title: 'I Am Your Father App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Your Father'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/vader.png'),
          ),
        ),
      ),
    ),
  );
}
