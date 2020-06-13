import 'package:flutter/material.dart';

void main() {
  runApp(ColumnWithScrollViewApp());
}

class ColumnWithScrollViewApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column with Scroll View Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              color: Colors.red[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 250,
              color: Colors.red[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 250,
              color: Colors.yellow[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
      ),
    );
  }
}
