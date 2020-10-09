import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scroll To Index Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Scroll To Index Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scrollDirection = Axis.vertical;

  AutoScrollController controller;
  List<List<int>> randomList;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        scrollDirection: scrollDirection,
        controller: controller,
        children: <Widget>[
          ...List.generate(20, (index) {
            return AutoScrollTag(
              key: ValueKey(index),
              controller: controller,
              index: index,
              child: Container(
                height: 100,
                color: Colors.red,
                margin: EdgeInsets.all(10),
                child: Center(child: Text('index: $index')),
              ),
              highlightColor: Colors.black.withOpacity(0.1),
            );
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToIndex,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Future _scrollToIndex() async {
    await controller.scrollToIndex(6, preferPosition: AutoScrollPosition.begin);
  }
}