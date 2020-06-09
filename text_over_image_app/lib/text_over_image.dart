import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg'
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text over Image'),),
      body: Stack(
        children: <Widget>[
          Image.network('https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg'),
          Text('Sample Text', style: TextStyle(fontSize: 20, color: Colors.white),),
        ],
      ),
    );
  }
}
