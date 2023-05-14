import 'package:develpoment/val_context_tile.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;

class Home extends StatelessWidget {
  const Home({super.key});
//   var list = List<Element>.generate(4, (index) => null)
//   var t = ui.platformViewRegistry.registerViewFactory("viewType", (int viewId) {
//     final html.Element htmlElement = html.DivElement()
//       ..children =
//       ..text = "E"
//       ..style.width = '100%'
//       ..style.height = '100%';
//     return htmlElement;
//   });

  static const questions = [
    {"questions": "1", "values": "2"},
    {"questions": "1", "values": "2"}
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color.fromARGB(215, 229, 212, 31)),
                    left: BorderSide(color: Color.fromARGB(255, 97, 34, 34)),
                    right: BorderSide(color: Color.fromARGB(255, 233, 32, 32)),
                    bottom: BorderSide(),
                  ),
                ),
                child: Image.asset(
                  '../assets/image1.png',
                  height: 250,
                  width: 400,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color.fromARGB(215, 229, 212, 31)),
                    left: BorderSide(color: Color.fromARGB(255, 97, 34, 34)),
                    right: BorderSide(color: Color.fromARGB(255, 233, 32, 32)),
                    bottom: BorderSide(),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              ValContextTile("117,390,155", "Volume",
                                  Colors.white, Colors.grey),
                              ValContextTile("2,000,000,000", "Turnover",
                                  Colors.white, Colors.grey),
                              ValContextTile(
                                  "22,836", "Trades", Colors.white, Colors.grey),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(),
                              const ValContextTile(
                                  "109", "Positive", Colors.green, Colors.grey),
                              const ValContextTile(
                                  "122", "Negative", Colors.red, Colors.grey),
                              const ValContextTile(
                                  "37", "Neutral", Colors.blue, Colors.grey),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(),
                          ],
                        ),
                        Row(
                          children: [
                            Container(),
                          ],
                        ),
                        Row(
                          children: [
                            Container(),
                            Container(),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(children: const [
                          Icon(
                            Icons.arrow_drop_up,
                            size: 25.0,
                          ),
                          Text("Top Gainers"),
                          Icon(
                            Icons.more_vert,
                            size: 25.0,
                          )
                        ]),
                      ],
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      color: Colors.red,
                    ),
                    Container(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
