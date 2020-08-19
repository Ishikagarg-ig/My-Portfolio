import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Menu extends StatelessWidget {
  List list = ['Home','About', 'Projects', 'Contact'];

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    print(width);
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: BackdropFilter(
          filter: new ui.ImageFilter.blur(
            sigmaX: 6.0,
            sigmaY: 6.0,
          ),
          child: Container(
            margin: EdgeInsets.all(width*0.3),
            //padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color(0xFFB4C56C).withOpacity(0.01),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Container(
              alignment: Alignment.center,
              child: ListView.builder(itemBuilder: (context, index){
                return ListTile(
                   title: Text(list[index],style: TextStyle(color: Colors.black),),
                );
               },itemCount: list.length,
            ),
          ),
        ),
      ),
      ),
    );
  }
}
