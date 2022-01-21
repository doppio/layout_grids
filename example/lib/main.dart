import 'package:flutter/material.dart';
import 'package:layout_grids/layout_grids.dart';

void main() {
  runApp(MyApp());
}

// This example app wraps the default counter app
// with a grid overlay.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridOverlay(
      grids: [
        PixelGrid(color: Colors.red.withOpacity(0.8)),
        FlexColumnGrid(
          count: 4,
          gutter: 8,
          margin: 16,
          color: Colors.green.withOpacity(0.2),
        ),
        FixedRowGrid(
          count: 1,
          height: 64,
          alignment: GridAlignment.end,
          color: Colors.cyan.withOpacity(0.2),
        ),
      ],
      child: MaterialApp(
        title: 'Layout Grids Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Layout Grids Example'),
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
