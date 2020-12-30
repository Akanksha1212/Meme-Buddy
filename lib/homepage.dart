import 'package:google_fonts/google_fonts.dart';
import 'package:memebuddy/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:memebuddy/pages/meme.dart';
import 'package:memebuddy/pages/profile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    Home(),
    Meme(),
    Profile(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return new SingleChildScrollView(
                      child: new ConstrainedBox(
                        constraints: new BoxConstraints(),
                        child: new Container(
                          child: new Center(
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Container(
                                height: 400,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: Card(
                                          elevation: 10.0,
                                          child: ListTile(
                                            leading: Image.network(
                                                "https://i.dlpng.com/static/png/6720285_preview.png"),
                                            title: Text(
                                              'We found a match for you! ',
                                              style: GoogleFonts.abel(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            trailing: Image.network(
                                                "https://static.thenounproject.com/png/367821-200.png"),
                                            subtitle: Text(
                                                'Vishakha (MemeQuotient : 95)'),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 25,
                                                    vertical: 10),
                                          ),
                                          color: Colors.deepPurple[100],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(55),
                                          ),
                                        ),
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => Navigation(),
                                          //   ),
                                          // );
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      GestureDetector(
                                        child: Card(
                                          elevation: 10.0,
                                          child: ListTile(
                                            leading: Image.network(
                                                "https://i.dlpng.com/static/png/6720285_preview.png"),
                                            title: Text(
                                              'Hey! A new friend for you ',
                                              style: GoogleFonts.abel(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            trailing: Image.network(
                                                "https://static.thenounproject.com/png/367821-200.png"),
                                            subtitle: Text(
                                                'Varun (MemeQuotient : 90)'),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 25,
                                                    vertical: 10),
                                          ),
                                          color: Colors.deepPurple[100],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(55),
                                          ),
                                        ),
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => Navigation(),
                                          //   ),
                                          // );
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      GestureDetector(
                                        child: Card(
                                          elevation: 10.0,
                                          child: ListTile(
                                            leading: Image.network(
                                                "https://i.dlpng.com/static/png/6720285_preview.png"),
                                            title: Text(
                                              'Avi can be your new best friend!!! ',
                                              style: GoogleFonts.abel(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            trailing: Image.network(
                                                "https://static.thenounproject.com/png/367821-200.png"),
                                            subtitle:
                                                Text('Avi (MemeQuotient : 96)'),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 25,
                                                    vertical: 10),
                                          ),
                                          color: Colors.deepPurple[100],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(55),
                                          ),
                                        ),
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => Navigation(),
                                          //   ),
                                          // );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fireplace), title: Text("Meme")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profile")),
        ],
      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
