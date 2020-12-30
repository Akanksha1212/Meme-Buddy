import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memebuddy/animation/fadeanimation.dart';
import 'package:memebuddy/homepage.dart';
import 'package:memebuddy/sign/login.dart';
import 'package:memebuddy/sign/sign_in.dart';
import 'package:memebuddy/sign/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9daeb),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Meme Buddy",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Color(0xFF20124d),
                                fontSize: 80,
                                fontWeight: FontWeight.bold)),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.2,
                      Text(
                        "",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[700], fontSize: 15),
                      )),
                ],
              ),
              FadeAnimation(
                  1.4,
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.dribbble.com/users/2893989/screenshots/7866867/media/81924c6aaed56d9633011c6444e46898.png?compress=1&resize=1000x750'),
                      ),
                    ),
                  )),
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1.5,
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Login",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Color(0xFF20124d),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.6,
                      Container(
                        padding: EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                            )),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          color: Colors.yellow,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Color(0xFF20124d),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )),
                  // SignInButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return MyHomePage();
                },
              ),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
