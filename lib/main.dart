import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/responsiveLayout.dart';
import 'package:portfolio_website/Widget/drawer.dart';
import 'package:portfolio_website/Widget/navbar.dart';
import 'package:portfolio_website/Widget/search.dart';
import 'package:portfolio_website/Widget/sendBtn.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Screens/HomePage.dart';
import 'Widget/menu.dart';

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
      home: MyHomePage(),
    );
  }
}

