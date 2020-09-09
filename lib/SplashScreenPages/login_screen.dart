import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:easy_delivery/Screens/home.dart';
import 'package:easy_delivery/SplashScreenPages/SignUp.dart';
import 'package:easy_delivery/Utils/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.grey[300]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 400.h),
                child: Row(children: <Widget>[
                  Text(
                    AppLocalizations.of(context).translate('lg_title1'),
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: FontData.h1,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    AppLocalizations.of(context).translate('lg_title2'),
                    style: TextStyle(
                        color: ColorTheme.c1,
                        fontSize: FontData.h1,
                        fontWeight: FontWeight.bold),
                  )
                ])),
            Container(
                //alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50.h),
                child: Wrap(children: <Widget>[
                  Text(
                    AppLocalizations.of(context).translate('lg_subtitle'),
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: FontData.p2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigate.page(context, SignUp());
                    },
                    child: Text(
                      AppLocalizations.of(context).translate('lg_text_link'),
                      style: TextStyle(
                        color: ColorTheme.c1,
                        decoration: TextDecoration.underline,
                        fontSize: FontData.p2,
                      ),
                    ),
                  )
                ])),
            Container(
                margin: EdgeInsets.only(top: 300.h),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(5.0),
                  shadowColor: Colors.grey[100],
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context).translate('email'),
                      hintStyle: TextStyle(fontSize: FontData.p4),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 55.h),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(5.0),
                  shadowColor: Colors.grey[100],
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context).translate('password'),
                      hintStyle: TextStyle(fontSize: FontData.p4),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 55.h),
              alignment: Alignment.centerRight,
              child: RaisedButton(
                padding: EdgeInsets.all(10),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                color: ColorTheme.c1,
                child: Text(
                  AppLocalizations.of(context).translate('lg_button'),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: FontData.p2,
                  ),
                ),
                onPressed: () {
                  Navigate.page(context, Home());
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 150.h),
                alignment: Alignment.center,
                child:GestureDetector(
                  child: Text(
                    AppLocalizations.of(context).translate('lg_guest'),
                    style: TextStyle(
                      color: ColorTheme.c1,
                      decoration: TextDecoration.underline,
                      fontSize: FontData.p3,
                    ),
                  ),
                  onTap: ()
                  {
                   // Navigate.page(context, Login());
                  },
                )
            ),

          ],
        ),
      ),
    );
  }
}
