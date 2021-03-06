import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/Utils/responsiveLayout.dart';

import 'menu.dart';

class NavBar extends StatelessWidget {
  final navLinks=["Home","About","Work","Contact"];

  List<Widget> navItem(){
    return navLinks.map((text) {
      return Padding(
        padding: const EdgeInsets.only(left:30.0),
        child: Text(text,style: TextStyle(fontSize: 18),),
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              //Text("Ishika garg",style: TextStyle(fontSize: 28),),
            ],
          ),
          if(!ResponsiveLayout.isSmallScreen(context))
            Padding(
              padding: const EdgeInsets.only(right:60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [...navItem()],
              ),
            )
          else
            GestureDetector(
              onTap:(){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu()));
              },
                child: Icon(Icons.menu,size: 26,),
            ),
        ],
      ),
    );
  }
}
