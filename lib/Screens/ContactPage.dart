import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/responsiveLayout.dart';
import 'package:portfolio_website/Widget/drawer.dart';
import 'package:portfolio_website/Widget/navbar.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
      
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


