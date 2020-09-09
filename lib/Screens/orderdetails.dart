import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:easy_delivery/Screens/recipientdetails.dart';
import 'package:easy_delivery/Utils/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {

    return OrderDetailState();
  }
}

class OrderDetailState extends State<OrderDetail>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea
      (
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: ColorTheme.appbarcolor,
          title: Text(
            AppLocalizations.of(context).translate('o_details'),
            style: TextStyle(
              fontSize: FontData.appbartitlesize,
              color: Colors.grey[700]
            ),
          ),
        ),
        body:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100.h,bottom: 40.h),
                child:Text(
                  AppLocalizations.of(context).translate('o_c_c'),
              style: TextStyle(
                fontSize: FontData.p2
              ),
            )),
            TextField(
              style: TextStyle(
                  fontSize: FontData.p3
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'E.g: 193832',
                hintStyle: TextStyle(
                    fontSize: FontData.p4
                ),
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
            Padding(
                padding: EdgeInsets.only(top: 50.h,bottom: 40.h),
                child:Text(
                  AppLocalizations.of(context).translate('o_'),
                  style: TextStyle(
                      fontSize: FontData.p2
                  ),
                )),
            TextField(
              maxLines: null,
              maxLength: 500,
              style: TextStyle(
                  fontSize: FontData.p3
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: AppLocalizations.of(context).translate('o_hint'),
                hintStyle: TextStyle(
                  fontSize: FontData.p4
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            )
          ],
        )),
        bottomNavigationBar: Container(
          height: 150.h,
          child:FlatButton(
            color: ColorTheme.c1,
        onPressed: ()
            {
              Navigate.page(context, RecipientDetails());
            },
                  child:Text(
                    AppLocalizations.of(context).translate('next_button'),
            style: TextStyle(
              color: Colors.white,
              fontSize: FontData.p2,
            ),
          ),
        )
        ),
      ),
    );
  }
}