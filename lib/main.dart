import 'package:easy_delivery/Config/Configuration.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:easy_delivery/Screens/splashscreen.dart';
import 'package:easy_delivery/Services/googlemap.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'Config/applocalization.dart';

void main()=>runApp(App());

class App extends StatefulWidget{
  static void setLocale(BuildContext context,Locale locale)
  {
    AppState state =context.findAncestorStateOfType<AppState>();
    AppConfig.lang=locale.languageCode;
    state.setLocale(locale);
  }

  @override
  AppState createState()=>AppState();
}
class AppState extends State<App>
{
  Locale _locale;

  void setLocale(Locale locale)
  {
    setState(() {
      _locale=locale;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    title: "Easy Delivery",
    theme: ThemeData(
      fontFamily: FontData.family1
    ),
    debugShowCheckedModeBanner: false,
    locale: _locale,
    supportedLocales: [
      Locale('en', 'US'),
      Locale('ar', 'SA'),
    ],
    // These delegates make sure that the localization data for the proper language is loaded
      localizationsDelegates: [
      // THIS CLASS WILL BE ADDED LATER
      // A class which loads the translations from JSON files
      AppLocalizations.delegate,
      // Built-in localization of basic text for Material widgets
      GlobalMaterialLocalizations.delegate,
      // Built-in localization for text direction LTR/RTL
      GlobalWidgetsLocalizations.delegate,
    ],
    // Returns a locale which will be used by the app
    localeResolutionCallback: (locale, supportedLocales) {
      // Check if the current device locale is supported
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode &&
            supportedLocale.countryCode == locale.countryCode) {
          return supportedLocale;
        }
      }
      // If the locale of the device is not supported, use the first one
      // from the list (English, in this case).
      return supportedLocales.first;
    },
    home: SplashScreen(),
  );
  }
}
