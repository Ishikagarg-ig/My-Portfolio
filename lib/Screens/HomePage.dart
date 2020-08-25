import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/responsiveLayout.dart';
import 'package:portfolio_website/Widget/drawer.dart';
import 'package:portfolio_website/Widget/navbar.dart';
import 'package:portfolio_website/Widget/search.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
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
                    child: Text("Student, Flutter Developer, & Programmer",style: TextStyle(fontSize: 25),),
                    //child: Text("I'm a student, studing Btech(Computer Science) in Chitkara University. I make stunning and userfriendly flutter apps and web apps. I'm a passionate learner and have intuitive Competitive programming skills. You can see my amazing projects on Github!!",style: TextStyle(fontSize: 21),),
                  ),
                  SizedBox(height: 40,),
                  Search(),
                  Row(
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/images/github.png",
                        ),
                        height: 30,
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:12.0),
                        child: Image(
                          image: AssetImage(
                            "assets/images/hackerrank.png",
                          ),
                          height: 35,
                          width: 35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:12.0),
                        child: Image(
                          image: AssetImage(
                            "assets/images/linkedin.png",
                          ),
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
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
            Text("Student, Flutter Developer, & Programmer",style: TextStyle(fontSize: 25),),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image(
                image: AssetImage(
                  "assets/images/clip-programming.png",
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Search(),
            Center(
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
                    child: Image(
                      image: AssetImage(
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
            ),
          ],
        ),
      ),
    );
  }
}


