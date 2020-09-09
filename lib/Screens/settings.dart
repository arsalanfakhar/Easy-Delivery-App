import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingsState();
  }
}

class SettingsState extends State<Settings> {
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
                AppLocalizations.of(context).translate('db_set'),
                style: TextStyle(
                    fontSize: FontData.appbartitlesize,
                    color: Colors.grey[700]
                ),
              ),
            ),
            body: ListView(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  _changeLanguage('ar');
                },
                child: Text(
                    'العربية'
                )),
            FlatButton(
                onPressed: () {
                  _changeLanguage('en');
                },
                child: Text('English'))
          ],
        )));
  }

  void _changeLanguage(var languageCode) {
    Locale _temp;
    switch (languageCode) {
      case 'en':
        _temp = Locale(languageCode, 'US');
        break;
      case 'ar':
        _temp = Locale(languageCode, 'SA');
        break;
      default:
        _temp = Locale(languageCode, 'US');
    }
    App.setLocale(context, _temp);
  }
}
