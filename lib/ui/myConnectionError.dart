import 'package:convert_website_to_app/data/websiteData.dart';
import 'package:flutter/material.dart';

class MyConnectionError extends StatefulWidget {
  @override
  _MyConnectionErrorState createState() => _MyConnectionErrorState();
}

class _MyConnectionErrorState extends State<MyConnectionError> {
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
                WebsiteData.connectionErrorTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: WebsiteData.connectionErrorFont,
                    color: WebsiteData.connectionErrorTextColor,
                    fontSize: 25),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                WebsiteData.connectionErrorDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: WebsiteData.connectionErrorFont,
                    color: WebsiteData.connectionErrorTextColor,
                    fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Text(
                    WebsiteData.connectionErrorButtonText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: WebsiteData.connectionErrorFont,
                        color: WebsiteData.connectionErrorButtonTextColor,
                        fontSize: 20),
                  ),
                  color: WebsiteData.connectionErrorButtonColor,
                  onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/');
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}
