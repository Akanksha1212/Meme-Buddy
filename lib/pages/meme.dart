import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class Meme extends StatefulWidget {
  @override
  _MemeState createState() => _MemeState();
}

class _MemeState extends State<Meme> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> welcomeImages = [
    "https://www.testbytes.net/wp-content/uploads/2019/06/Untitled-63.png",
    "https://miro.medium.com/max/1920/0*z1mm6izqSeDiKukb",
    "https://humornama.com/wp-content/uploads/2020/06/programmers-law-meme.jpg",
    "https://i.redd.it/ogyytgglkln51.jpg",
    "https://www.thecoderpedia.com/wp-content/uploads/2020/06/Programming-Memes-Programmer-while-sleeping.jpg?x46841",
    "https://www.testbytes.net/wp-content/uploads/2019/06/Untitled-63.png",
    "https://miro.medium.com/max/1920/0*z1mm6izqSeDiKukb",
    "https://humornama.com/wp-content/uploads/2020/06/programmers-law-meme.jpg",
    "https://i.redd.it/ogyytgglkln51.jpg",
    "https://www.thecoderpedia.com/wp-content/uploads/2020/06/Programming-Memes-Programmer-while-sleeping.jpg?x46841",
    "assets/welcome1.png"
  ];

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    CardController controller;
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.deepPurple[100],
        body: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.deepPurple[100],
            child: new SingleChildScrollView(
                child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: new TinderSwapCard(
                    swipeUp: true,
                    swipeDown: true,
                    orientation: AmassOrientation.BOTTOM,
                    totalNum: welcomeImages.length,
                    stackNum: 3,
                    swipeEdge: 4.0,
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: MediaQuery.of(context).size.width * 0.9,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.width * 0.8,
                    cardBuilder: (context, index) => Card(
                      child: Image.network('${welcomeImages[index]}'),
                    ),
                    cardController: controller = CardController(),
                    swipeUpdateCallback:
                        (DragUpdateDetails details, Alignment align) {
                      /// Get swiping card's alignment
                      if (align.x < 0) {
                        //Card is LEFT swiping
                      } else if (align.x > 0) {
                        //Card is RIGHT swiping
                      } else if (align.y > 0) {
                        //Card is up swiping
                      } else if (align.y < 0) {
                        //Card is down swiping
                      }
                    },
                    swipeCompleteCallback:
                        (CardSwipeOrientation orientation, int index) {
                      /// Get orientation & index of swiped card!
                    },
                  ),
                ),
              ),
            ))));
  }
}
