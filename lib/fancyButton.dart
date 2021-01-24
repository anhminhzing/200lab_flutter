import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FancyButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final VoidCallback callBackFunction;

  FancyButton({
    Key key,
    this.color,
    this.child,
    this.callBackFunction
  }) : super(key : key);

  @override
  _FancyButtonState createState() => _FancyButtonState();
}

class _FancyButtonState extends State<FancyButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: getColor(),
        onPressed: widget.callBackFunction,
        child: widget.child,
    );
  }

  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.amber,
    Colors.lightBlue,
  ];

  final random = Random();

  int next(int max, int min) => min + random.nextInt(max - min);

  Color getColor(){
    return colors[next(5, 0)];
  }
}
