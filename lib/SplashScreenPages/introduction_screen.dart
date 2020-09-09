import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Intro extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroState();
  }
}

class IntroState extends State<Intro>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 55.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white,Colors.grey[300]],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Container(
                color: Colors.blue,
                width: 375,
                height: 300,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 75.h) ,
              child: Text(
                  "Deliver Everywhere",
                style: TextStyle(
                  fontSize: FontData.h3,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(top: 75.h) ,
        child: Text(
          "Make it easy for you to deliver whatever you want wherever you want.",
          style: TextStyle(
              fontSize: FontData.p3,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold
          ),
        )),

          ],
        ),
      ),
    );
  }

}