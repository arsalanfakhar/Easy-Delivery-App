import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        top: true,
        bottom: true,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: ColorTheme.appbarcolor,
            title: Text(
              AppLocalizations.of(context).translate('db_profile'),
              style: TextStyle(
                  fontSize: FontData.appbartitlesize, color: Colors.grey[700]),
            ),
          ),
          body: ListView(children: <Widget>[
            Container(
                alignment: Alignment.topRight,
                //padding: EdgeInsets.only(right: 40.w, top: 50.h, bottom: 100.h),
                child: IconButton(icon: Icon(Icons.edit), onPressed: () {})),
            Padding(
                padding: EdgeInsets.only(top: 50.h, bottom: 100.h),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: ColorTheme.c1,
                  child: CircleAvatar(
                    radius: 45,
                    onBackgroundImageError: (exception, stackTrace) =>
                        Icon(Icons.person),
                    backgroundImage: AssetImage('Images/john.png'),
                  ),
                )),
            Divider(
              height: 10.h,
            ),
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape:
                  new RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('su_name'),
                ),
                subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                      'John Wick',
                      style: TextStyle(fontSize: FontData.p3),
                    )),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape:
                  new RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('p_email'),
                ),
                subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                      'easy@gmail.com',
                      style: TextStyle(fontSize: FontData.p3),
                    )),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape:
                  new RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('p_phone'),
                ),
                subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                      '+123531535',
                      style: TextStyle(fontSize: FontData.p3),
                    )),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape:
                  new RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('password'),
                ),
                subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                      '********',
                      style: TextStyle(fontSize: FontData.p3),
                    )),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape:
                  new RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                ),
                title: Text(
                  AppLocalizations.of(context).translate('p_account'),
                ),
                subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                        AppLocalizations.of(context).translate('p_account_status1'),
                      style:
                          TextStyle(color: Colors.green, fontSize: FontData.p3),
                    )),
              ),
            )
          ]),
        ));
  }
}
