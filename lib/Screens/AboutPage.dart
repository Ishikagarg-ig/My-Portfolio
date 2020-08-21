import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/responsiveLayout.dart';
import 'package:portfolio_website/Widget/drawer.dart';
import 'package:portfolio_website/Widget/navbar.dart';

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
//      smallScreen: SmallChild(),
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
                          child: Text("I'm a student, studing Btech(Computer Science) in Chitkara University. I make stunning and userfriendly flutter apps and web apps. I'm a passionate learner and have intuitive Competitive programming skills. You can see my amazing projects on Github!!",
                            style: TextStyle(
                              fontSize: ResponsiveLayout.isMediumScreen(context)
                              ? 22
                              : 27,),))
                    ],
                  ),
                ),
              ],
            ),
          ),
//          FractionallySizedBox(
//            alignment: Alignment.centerRight,
//            widthFactor: .5,
//            child: Padding(
//              padding: const EdgeInsets.only(right:78.0),
//              child: Column(
//                children: [
//                  SizedBox(
//                    height: 190,
//                  ),
//                  Container(
//                      width: MediaQuery.of(context).size.width*0.6,
//                      child: Text("I'm a student, studing Btech(Computer Science) in Chitkara University. I make stunning and userfriendly flutter apps and web apps. I'm a passionate learner and have intuitive Competitive programming skills. You can see my amazing projects on Github!!",style: TextStyle(fontSize: 21),)),
//                ],
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}

