import 'dart:async';
import 'dart:io';

import 'package:convert_website_to_app/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:convert_website_to_app/data/websiteData.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'myConnectionError.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    super.initState();
    _getInternetConnection().then((value){
      startTime();
    });
  }

  Future<String> _getInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('Internet Connection Test Success.');
      }
    } on SocketException catch (_) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyConnectionError()));
    }
    return "Internet Connection Control";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebsiteData.splashScreenBackgroundColor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                WebsiteData.splashScreenName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: WebsiteData.splashScreenFont,
                    color: WebsiteData.splashScreenTextColor,
                    fontSize: WebsiteData.splashScreenFontSize),
              ),
              SizedBox(
                height: 50,
              ),
              SpinKitRipple(
                color: WebsiteData.splashScreenLoadingBarColor,
                size: 50.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                WebsiteData.splashScreenLoadingText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: WebsiteData.splashScreenFont,
                    color: WebsiteData.splashScreenTextColor,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
