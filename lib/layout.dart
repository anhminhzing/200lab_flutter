import 'package:flutter/material.dart';

class LayOut extends StatefulWidget {
  @override
  _LayOutState createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return Stack(
      fit: StackFit.expand,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.lightBlue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              verticalDirection: VerticalDirection.up,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.blue,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.orange,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 140 / 4,
                          width: 140 / 4,
                          color: Colors.greenAccent,
                        ),
                        Expanded(
                          child: Container(
                            height: 140 / 4,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              height: height,
              color: Colors.pinkAccent,
            ),
            Container(
              width: 20,
              height: height,
              color: Colors.white,
            ),
            Expanded(
              child: Container(
                height: height,
                color: Colors.pinkAccent,
              ),
            )
          ],
        ),
        Positioned(
          bottom: 240,
          left: 50,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
