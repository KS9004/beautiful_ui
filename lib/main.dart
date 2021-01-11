import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

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
            ])
          ],
        ),
      ),
    );
  }
}
