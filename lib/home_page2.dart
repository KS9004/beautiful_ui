import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E9FE),
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Image.asset('assets/santa2.png')),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Dear, Santa Claus",
              style: TextStyle(
                  color: Color(0xffefb570),
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
