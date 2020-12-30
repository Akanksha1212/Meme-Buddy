import 'package:flutter/material.dart';
import 'package:memebuddy/sign/logsign.dart';
import 'package:memebuddy/sign/sign_in.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Image.network(
                          'https://cdn.dribbble.com/users/427368/screenshots/4623525/artboard_3.jpg?compress=1&resize=800x600'),
                      SizedBox(height: 15),
                      GestureDetector(
                        child: Container(
                          height: 350,
                          child: Card(
                            child: Container(
                                constraints: BoxConstraints.expand(),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.indianexpress.com/2020/12/LOOKBACK-1.jpg'),
                                        fit: BoxFit.cover)),
                                child: Column(
                                  children: [
                                    Text(
                                      "",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 36),
                                    )
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                )),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                          ),
                        ),
                        onTap: () async {
                          const url =
                              'https://indianexpress.com/article/trending/trending-globally/top-memes-that-ruled-social-media-in-2020-7123217/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          child: Container(
                            height: 350,
                            child: Card(
                              child: Container(
                                  constraints: BoxConstraints.expand(),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.dribbble.com/users/677572/screenshots/14547579/media/cc72f3e771cfa888c90efae62dd1b3b3.png?compress=1&resize=1000x750'),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    children: [
                                      Text(
                                        "",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 36),
                                      )
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  )),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              elevation: 5,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                          onTap: () {
                            null;
                          }),
                    ],
                  ),
                ),
              ),
            )));
  }
}
