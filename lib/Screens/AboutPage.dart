import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:portfolio_website/Utils/responsiveLayout.dart';
import 'package:portfolio_website/Widget/drawer.dart';
import 'package:portfolio_website/Widget/navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldKey,
      body: MaterialApp(
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
                  if(!ResponsiveLayout.isSmallScreen(context))
                    NavBar()
                  else
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:45.0,vertical: 38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFC86DD7),
                                      Color(0xFF3023AE),
                                    ],
                                    begin: Alignment.bottomRight,end: Alignment.topLeft,
                                  ),
                                ),
                                child: Center(
                                  child: Text("IG",style: TextStyle(fontSize: 30,color: Colors.white),),
                                ),
                              ),
                              SizedBox(
                                width:16,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: ()=> _scaffoldKey.currentState.openDrawer(),
                            child: Icon(Icons.menu),
                          ),
                        ],
                      ),
                    ),
                  Body(),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
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
    return FractionallySizedBox(
      alignment: Alignment.center,
     // widthFactor: .6,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:58.0),
            child: Row(
              children: [
                Text("About me",
                  style: TextStyle(fontSize: ResponsiveLayout.isMediumScreen(context)
                      ? 60
                      : 70,
                      color: Colors.black),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:58.0),
            child: Row(
              children: [
                Text("Let me tell you few things...",
                  style: TextStyle(fontSize: ResponsiveLayout.isSmallScreen(context)
                      ? 18
                      : 25,
                      color: Colors.black54),),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:78.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: ResponsiveLayout.isMediumScreen(context)
                      ? 120
                      : 140,
                  backgroundImage: new AssetImage('images/ishika.jpg',),
                ),
                SizedBox(width: ResponsiveLayout.isMediumScreen(context)
                    ? MediaQuery.of(context).size.width*0.1
                    : MediaQuery.of(context).size.width*0.04,),
                Container(
                    width: ResponsiveLayout.isMediumScreen(context)
                        ? MediaQuery.of(context).size.width*0.5
                        : MediaQuery.of(context).size.width*0.65,
                    child: Text("I'm a student, studing Btech(Computer Science) in Chitkara University. I make stunning and userfriendly mobile apps and web apps using flutter and firebase. I'm a passionate learner and have intuitive programming skills. You can see my amazing projects on Github!!",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: ResponsiveLayout.isMediumScreen(context)
                        ? 22
                        : 27,
                      ),
                    ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.13,
                height: MediaQuery.of(context).size.height*0.18,
                child: LiquidCircularProgressIndicator(
                  value: 0.9, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.blueGrey), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Flutter"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.13,
                height: MediaQuery.of(context).size.height*0.18,
                child: LiquidCircularProgressIndicator(
                  value: 0.8, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Firebase"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.13,
                height: MediaQuery.of(context).size.height*0.18,
                child: LiquidCircularProgressIndicator(
                  value: 0.7, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.red), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("DS & ALGO"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.13,
                height: MediaQuery.of(context).size.height*0.18,
                child: LiquidCircularProgressIndicator(
                  value: 0.6, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.purple), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Java"),
                ),
              ),
            ],
          ),
          SizedBox(height:40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.13,
                height: MediaQuery.of(context).size.height*0.18,
                child: LiquidCircularProgressIndicator(
                  value: 0.7, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.cyan), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Machine Learning"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.13,
                height: MediaQuery.of(context).size.height*0.18,
                child: LiquidCircularProgressIndicator(
                  value: 0.5, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.amber), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Matlab"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.13,
                height: MediaQuery.of(context).size.height*0.18,
                child: LiquidCircularProgressIndicator(
                  value: 0.8, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.green), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Programming\nSkills"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap:() async {
                    const url = 'https://github.com/Ishikagarg-ig';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Image.network(
                    "assets/images/github.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: GestureDetector(
                    onTap:() async {
                      const url = 'https://www.hackerrank.com/ishikagarg137';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.network(
                      "assets/images/hackerrank.png",
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: GestureDetector(
                    onTap:() async {
                      const url = 'https://www.linkedin.com/in/ishika-garg-6893b7176/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image.network(
                      "assets/images/linkedin.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("About me",
              style: TextStyle(fontSize: 60,
                  color: Colors.black),),
            SizedBox(height: 10,),
            Text("Let me tell you few things...",
              style: TextStyle(fontSize: 25,
                  color: Colors.black54),),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircleAvatar(
                radius: ResponsiveLayout.isMediumScreen(context)
                    ? 120
                    : 140,
                backgroundImage: new AssetImage('assets/images/ishika.jpg',),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Text("I'm a student, studing Btech (Computer Science) in Chitkara University. I make stunning and user friendly mobile apps and web apps using flutter and firebase. I'm a passionate learner and have intuitive programming skills. You can see my amazing projects on Github!!",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: LiquidCircularProgressIndicator(
                      value: 0.9, // Defaults to 0.5.
                      backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                      valueColor: AlwaysStoppedAnimation(Colors.blueGrey), // Defaults to the current Theme's backgroundColor.
                      borderColor: Colors.white,
                      borderWidth: 5.0,
                      direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                      center: Text("Flutter"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: LiquidCircularProgressIndicator(
                      value: 0.8, // Defaults to 0.5.
                      backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                      valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's backgroundColor.
                      borderColor: Colors.white,
                      borderWidth: 5.0,
                      direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                      center: Text("Firebase"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: LiquidCircularProgressIndicator(
                      value: 0.7, // Defaults to 0.5.
                      backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                      valueColor: AlwaysStoppedAnimation(Colors.red), // Defaults to the current Theme's backgroundColor.
                      borderColor: Colors.white,
                      borderWidth: 5.0,
                      direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                      center: Text("DS & ALGO"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: LiquidCircularProgressIndicator(
                      value: 0.6, // Defaults to 0.5.
                      backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                      valueColor: AlwaysStoppedAnimation(Colors.purple), // Defaults to the current Theme's backgroundColor.
                      borderColor: Colors.white,
                      borderWidth: 5.0,
                      direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                      center: Text("Java"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: LiquidCircularProgressIndicator(
                      value: 0.7, // Defaults to 0.5.
                      backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                      valueColor: AlwaysStoppedAnimation(Colors.cyan), // Defaults to the current Theme's backgroundColor.
                      borderColor: Colors.white,
                      borderWidth: 5.0,
                      direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                      center: Text("Machine Learning"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: LiquidCircularProgressIndicator(
                      value: 0.5, // Defaults to 0.5.
                      backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                      valueColor: AlwaysStoppedAnimation(Colors.amber), // Defaults to the current Theme's backgroundColor.
                      borderColor: Colors.white,
                      borderWidth: 5.0,
                      direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                      center: Text("Matlab"),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.3,
                height: MediaQuery.of(context).size.height*0.2,
                child: LiquidCircularProgressIndicator(
                  value: 0.8, // Defaults to 0.5.
                  backgroundColor: Colors.white, // Defaults to the current Theme's accentColor.
                  valueColor: AlwaysStoppedAnimation(Colors.green), // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                  center: Text("Programming\nSkills"),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                GestureDetector(
                  onTap:() async {
                    const url = 'https://github.com/Ishikagarg-ig';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Image(
                    image : AssetImage(
                      "assets/images/github.png",
                    ),
                    height: 30,
                    width: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: GestureDetector(
                    onTap:() async {
                      const url = 'https://www.hackerrank.com/ishikagarg137';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image(
                      image: AssetImage(
                        "assets/images/hackerrank.png",
                      ),
                       height: 35,
                       width: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: GestureDetector(
                    onTap:() async {
                      const url = 'https://www.linkedin.com/in/ishika-garg-6893b7176/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Image(
                      image: AssetImage(
                        "assets/images/linkedin.png",
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
        ],
        ),
      ),
    );
  }
}


