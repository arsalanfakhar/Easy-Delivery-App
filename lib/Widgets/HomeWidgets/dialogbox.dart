import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:easy_delivery/Screens/OrderHistory/orderhistory.dart';
import 'package:easy_delivery/Screens/UserProfile/userprofile.dart';
import 'package:easy_delivery/Screens/settings.dart';
import 'package:easy_delivery/Utils/navigation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDialogBox {
  static void show(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: ()
              {

              },
              child: Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0)), //this right here
                child: Container(
                  //height: 700.h,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                            Text(
                              AppLocalizations.of(context).translate('db_profile'),
                              style: TextStyle(fontSize: FontData.p1),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 40.h),
                                child: Card(
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.person,
                                      size: 30,
                                    ),
                                    title: Text(
                                      AppLocalizations.of(context).translate('db_Name'),
                                      style: TextStyle(
                                          fontSize: FontData.p2,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigate.page(context, Profile());
                                    },
                                  ),
                                )),
                          ] +
                          List.generate(3, (index) {
                            List icons = [
                              Icons.history,
                              Icons.settings,
                              Icons.exit_to_app
                            ];

                            List titles = [
                              AppLocalizations.of(context).translate('db_o_h'),
                              AppLocalizations.of(context).translate('db_set'),
                              AppLocalizations.of(context).translate('db_l_o')
                            ];
                            return Card(
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                              child: ListTile(
                                dense: true,
                                leading: Icon(
                                  icons[index],
                                ),
                                title: Text(
                                  titles[index],
                                  style: TextStyle(fontSize: FontData.p4),
                                ),
                                onTap: () {

                                  Navigator.pop(context);
                                 if(index==0)
                                   {
                                     Navigate.page(context, OrderHistory());
                                   }
                                 else if(index==1)
                                   {
                                     Navigate.page(context, Settings());
                                   }
                                },
                              ),
                            );
                          }) +
                          [
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  AppLocalizations.of(context).translate('cnl_button'),
                                  style: TextStyle(
                                      color: Colors.red, fontSize: FontData.p2),
                                ))
                          ],
                    ),
                  ),
                ),
              ));
        });
  }
}
