import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E9FE),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'Your Secret\nSanta',
                    style: TextStyle(
                        color: Color(0xffefb570),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    children: []),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text:
                        "Become a Santa\nand get chance to send\nand recieve gifts for this christmas!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Stack(children: [
              Image.asset(
                'assets/santa-claus.png',
                width: 320,
                height: 400.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 230.0, right: 15.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xff7077eb),
                  ),
                  child: MaterialButton(
                    child: Text(
                      "Let's Begin",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    onPressed: null,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 222.0, right: 8.0),
                child: Transform.rotate(
                  angle: pi / 80.0,
                  child: Container(
                    height: 48.0,
                    width: double.infinity,
                    child: OutlineButton(
                        borderSide:
                            BorderSide(color: Color(0xff7077eb), width: 3.0),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff7077eb)),
                            borderRadius: new BorderRadius.circular(15.0))),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
