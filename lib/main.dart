import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/responsiveLayout.dart';
import 'package:portfolio_website/Widget/navbar.dart';
import 'package:portfolio_website/Widget/search.dart';
import 'package:portfolio_website/Widget/sendBtn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MediaQuery Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ],
        ),
      ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                NavBar(),
                Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network("assets/images/clip-programming.png"),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ishika garg",style: TextStyle(fontSize: 60,color: Colors.black),),
                  SizedBox(height: 25,),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Text("I'm a student, studing Btech(Computer Science) in Chitkara University. I make stunning and userfriendly flutter apps and web apps. I'm a passionate learner and have intuitive Competitive programming skills. You can see my amazing projects on Github!!",style: TextStyle(fontSize: 21),),
                ),
                  SizedBox(height: 40,),
                 Search(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ishika garg",style: TextStyle(fontSize: 60,color: Colors.black),),
            SizedBox(height: 20,),
            Text("I'm a student, studing Btech(Computer Science) in Chitkara University. I make stunning and userfriendly flutter apps and web apps. I'm a passionate learner and have intuitive Competitive programming skills. You can see my amazing projects on Github!!",style: TextStyle(fontSize: 21),),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "assets/images/clip-programming.png",
                scale: 1,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Search(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}


