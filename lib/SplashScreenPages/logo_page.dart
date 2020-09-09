import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LogoPageState();
  }

}

class LogoPageState extends State<LogoPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration:BoxDecoration(
          gradient:LinearGradient(
            colors:[ColorTheme.c2,ColorTheme.c1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child:Center(
          child:Row
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                  Image(
                    image: AssetImage('Images/logo.png'),
//                color: Colors.white,
//                colorBlendMode: BlendMode.hardLight,
                    height: 200.h,
                    width: 200.w,
                  ),
              SizedBox(width: 40.w),
              Text(
                    "Simple\nDelivery\nApp",
                    style: TextStyle(
                      fontSize: FontData.logofontsize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
            ],
          )

      ),
      )
    );
  }

}