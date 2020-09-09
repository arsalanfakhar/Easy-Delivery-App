import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/SplashScreenPages/introduction_screen.dart';
import 'package:easy_delivery/SplashScreenPages/login_screen.dart';
import 'package:easy_delivery/SplashScreenPages/logo_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }

}

class SplashScreenState extends State<SplashScreen>
{
  PageController _pageController;
  int index=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController();
  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context);
    return
     SafeArea(
       top: true,
       bottom: true,
       child: Stack(
         children: <Widget>[
           PageView(
             controller: _pageController,
              reverse: false,
             onPageChanged: (_index)
             { setState(() {
               index=_index;
             });
             },
             children: <Widget>[
               LogoPage(),
               Intro(),
               Login()
             ],
           ),
           Align(
             alignment: Alignment.bottomCenter,
             child:pageIndicator()
           )
         ],
       ),
    );

  }
  Widget pageIndicator()
  {

    return
      Container(
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        width: ScreenUtil().setWidth(200),
        height: ScreenUtil().setHeight(30),
        margin: EdgeInsets.only(bottom:100.h),
        alignment: Alignment.centerLeft,
        child:AnimatedContainer
            (
          decoration: BoxDecoration(
              color: ColorTheme.progressIndicatorColor,
              borderRadius: BorderRadius.circular(10)
          ),
          width: ScreenUtil().setWidth((index+1)*(200/3)),
            height:30.h,
            duration: Duration(milliseconds: 250),
            )
    );
  }
}