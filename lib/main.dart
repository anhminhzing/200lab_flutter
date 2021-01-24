import 'package:flutter/material.dart';
import 'package:flutter_app/layout.dart';
import 'package:flutter_app/temperatureTranslate.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget appBarCustom() {
      return AppBar(
        title: Text('Minh\'s homework'),
      );
    }

    return Scaffold(
      appBar: appBarCustom(),
      body: TemperatureTranslate(),
    );
  }
}
