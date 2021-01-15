import 'package:flutter/material.dart';
import 'dart:math';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/santa2.png')),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Dear, Santa Claus",
                style: TextStyle(
                    color: Color(0xffefb570),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: RichText(
                text: TextSpan(
                    text: "My name is ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20.0),
                    children: [
                      TextSpan(
                        text: "Mariam\n",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff7077eb),
                        ),
                      ),
                      TextSpan(
                        text: "I'm ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                      TextSpan(
                        text: "19 ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff7077eb),
                        ),
                      ),
                      TextSpan(
                        text: "years old ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "I'm interested in",
                style: TextStyle(
                    color: Color(0xffefb570),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                StackWidget(
                  name: "Music",
                  image: "assets/headphones.png",
                ),
                StackWidget(
                  name: "Music",
                  image: "assets/book.png",
                ),
                StackWidget(
                  name: "Music",
                  image: "assets/sport.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  StackWidget({this.name, this.image});
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xff7077eb),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
        ),
        child: MaterialButton(
          onPressed: null,
        ),
      ),
      Transform.rotate(
        angle: -pi / 2.0,
        child: Container(
          height: 100.0,
          width: 100.0,
          child: OutlineButton(
              borderSide: BorderSide(color: Color(0xff7077eb), width: 3.0),
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                side: BorderSide(color: Color(0xff7077eb)),
                borderRadius: new BorderRadius.circular(20.0),
              )),
        ),
      ),
    ]);
  }
}
