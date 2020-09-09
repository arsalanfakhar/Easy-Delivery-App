import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:easy_delivery/Screens/payment.dart';
import 'package:easy_delivery/Utils/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class RecipientDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipientDetailsState();
  }
}

class RecipientDetailsState extends State<RecipientDetails> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: ColorTheme.appbarcolor,
          title: Text(
            AppLocalizations.of(context).translate('r_details'),
            style: TextStyle(
                fontSize: FontData.appbartitlesize, color: Colors.grey[700]),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 100.h, bottom: 30.h),
                    child: Text(
                      AppLocalizations.of(context).translate('r_name'),
                      style: TextStyle(fontSize: FontData.p2),
                    )),
                TextField(
                  style: TextStyle(fontSize: FontData.p3),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'E.g: Bin salman',
                    hintStyle: TextStyle(fontSize: FontData.p4),
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
                    padding: EdgeInsets.only(top: 60.h, bottom: 30.h),
                    child: Text(
                      AppLocalizations.of(context).translate('r_contact'),
                      style: TextStyle(fontSize: FontData.p2),
                    )),
                TextField(
                  style: TextStyle(fontSize: FontData.p3),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'E.g: +91 234 0424',
                    hintStyle: TextStyle(fontSize: FontData.p4),
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
                    padding: EdgeInsets.only(top: 60.h, bottom: 30.h),
                    child: Text(
                      AppLocalizations.of(context).translate('r_address'),
                      style: TextStyle(fontSize: FontData.p2),
                    )),
                TextField(
                  style: TextStyle(fontSize: FontData.p3),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Plot 4,Street 6, Jeddah Road, KSA',
                    hintStyle: TextStyle(fontSize: FontData.p4),
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
                    padding: EdgeInsets.only(top: 100.h, bottom: 30.h),
                    child: Text(
                      AppLocalizations.of(context).translate('r_loc'),
                      style: TextStyle(fontSize: FontData.p2),
                    )),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                        child: Text(
                      'Here will be google location',
                      style: TextStyle(fontSize: FontData.p3,color: Colors.blue[700]),
                    )),
                    Expanded
                      (
                      flex: 1,
                      child: IconButton
                        (
                        icon: Image
                          (
                          image:AssetImage('icons/location.png'),
                          width: 90.w,
                          height: 90.h,
                        ),
                        onPressed: ()
                        {

                        },
                      ),
                    )
                  ],
                )
              ],
            )),
        bottomNavigationBar: Container(
            //alignment: Alignment.center,

            height: 150.h,
            child: FlatButton(
              color: ColorTheme.c1,
              onPressed: () {
                Navigate.page(context, Payment());
              },
              child: Text(
                AppLocalizations.of(context).translate('next_button'),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: FontData.p2,
                ),
              ),
            )),
      ),
    );
  }
}
