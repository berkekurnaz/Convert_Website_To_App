import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'package:convert_website_to_app/data/websiteData.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return WebsiteData.appBarIsExist
        ? myWebViewScaffoldWithAppBar()
        : myWebViewScaffold();
  }

  Widget myWebViewScaffold() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15.0),
        child: WebviewScaffold(
          url: WebsiteData.myWebsiteName,
          withJavascript: true,
          withLocalStorage: true,
        ),
      ),
    );
  }

  Widget myWebViewScaffoldWithAppBar() {
    return WebviewScaffold(
      url: WebsiteData.myWebsiteName,
      appBar: AppBar(
        title: Text(
          WebsiteData.appBarText,
          style: TextStyle(
              color: WebsiteData.appBarTextColor,
              fontFamily: WebsiteData.appBarFont),
        ),
        centerTitle: true,
        backgroundColor: WebsiteData.appBarBackgroundColor,
      ),
      withJavascript: true,
      withLocalStorage: true,
    );
  }

}
