import 'package:convert_website_to_app/ui/myConnectionError.dart';
import 'package:convert_website_to_app/ui/home.dart';
import 'package:convert_website_to_app/ui/splashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
       "/": (context) => SplashScreen(),
       "/home" : (context) => Home(),
       "/error": (context) => MyConnectionError(),
    },
  ));
}
