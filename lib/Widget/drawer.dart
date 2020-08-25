import 'package:flutter/material.dart';
import 'package:portfolio_website/Screens/AboutPage.dart';
import 'package:portfolio_website/Screens/ContactPage.dart';
import 'package:portfolio_website/Screens/HomePage.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
             color: Colors.white,
          ),
          accountName: Text("Ishika garg",style: TextStyle(color: Colors.black,fontSize: 20),),
          currentAccountPicture: new GestureDetector(
              child: new CircleAvatar(
                backgroundImage: new AssetImage('assets/images/ishika.jpg',),
              )),
        ),
        ListTile(
          title: Text(
            ' Home',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          },
        ),
        ListTile(
          title: Text(
            'About',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
          },
        ),
        ListTile(
          title: Text(
            'Work',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
          },
        ),
        ListTile(
          title: Text(
            'Contact',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactPage()));
          },
        ),
      ]),
    );
  }
}
