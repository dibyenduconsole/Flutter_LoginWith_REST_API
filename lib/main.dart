import 'package:flutter/material.dart';
import 'package:login_with_restapi/app_screen/login_page.dart';
import 'package:login_with_restapi/app_screen/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Login with API",//#a394ff //  #a799ff
    theme: ThemeData(primaryColor: Color(0xffa394ff), accentColor: Color(0xffa799ff)),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder> {
      '/loginPage': (BuildContext context) => LoginPage()
    },
  
  )
  );
}
