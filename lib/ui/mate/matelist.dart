import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class Mateview extends StatefulWidget {
  @override
  _MateviewState createState() => _MateviewState();
}

class _MateviewState extends State<Mateview> {
  List<String> welcomeImages = [
    "assets/images/dog_2.png",
    "assets/images/dog_1.png",
    "assets/images/dog_2.png",
    "assets/images/dog_2.png"
  ];
  @override
  Widget build(BuildContext context) {
    CardController controller;
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Just one Swipe away!',
              style: TextStyle(fontSize: 25, color: Colors.green.shade900),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: MediaQuery.of(context).size.height * 0.4,
              child: new TinderSwapCard(
                swipeUp: false,
                swipeDown: false,
                orientation: AmassOrientation.BOTTOM,
                totalNum: welcomeImages.length,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.height * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.height * 0.8,
                cardBuilder: (context, index) => Card(
                    child: Column(
                  children: <Widget>[
                    Center(child: Image.asset('${welcomeImages[index]}')),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sky, 2Years',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 25),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text(
                                '2 kms',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                cardController: controller = CardController(),
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  print(orientation);
                  print(index);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(Icons.arrow_back),
                ),
                Container(
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
