import 'package:flutter/material.dart';

class LayOut extends StatefulWidget {
  @override
  _LayOutState createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
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
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
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
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.pinkAccent,
              ),
            ),
            Container(
              width: 10,
              color: Colors.white,
            ),
            Expanded(
              flex: 1,
              child: Container(
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
