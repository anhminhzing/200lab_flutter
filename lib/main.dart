import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/layout.dart';
import 'package:flutter_app/temperatureTranslate.dart';

import 'fancyButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

class MyHomePage extends StatefulWidget {

  List<UniqueKey> _buttonsKeys = [UniqueKey(), UniqueKey()];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    );
    _tabController.addListener(_handleChangeTab);
  }

  _handleChangeTab() {
    if (_tabController.indexIsChanging) return;
    print('Change tab: ${_tabController.index}');
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     bottom: TabBar(
    //       controller: _tabController,
    //       tabs: [
    //         Tab(icon: Icon(Icons.directions_car)),
    //         Tab(icon: Icon(Icons.directions_transit)),
    //         Tab(icon: Icon(Icons.directions_bike)),
    //       ],
    //     ),
    //   ),
    //   body: TabBarView(
    //     controller: _tabController,
    //     children: [
    //       Icon(Icons.directions_car),
    //       Icon(Icons.directions_transit),
    //       Icon(Icons.directions_bike),
    //     ],
    //   ),
    // );

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
