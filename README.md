# Convert Website To App
This repository contains a ready-made project for transforming your website into a mobile application. You can quickly convert your website into a mobile application by making the necessary adjustments according to your own wishes.

## How To Work ?
It runs a web view on the 'Home' screen according to the url address in the `WebsiteData.dart` file in the `data` folder under the 'lib' folder. <br/>
The desired url is installed on the `SplashScreen` screen, and if there is no internet connection at this stage, it will direct the user to the `MyConnectionError` screen. <br/>
The background color, font color, fonts, and fonts of each scene can be specified by the user in the `WebsiteData.dart` file.

## How To Install ?
1-) Install if flutter is not installed. <br/>
2-) Download the project to your computer. <br/>
3-) lib -> data -> WebsiteData.dart edit the file by yourself. <br/>
4-) Build the application with the command `flutter build apk` <br/>
5-) Test the app on a real device. <br/>

## Documentation
Burada projeye ait özelleştirebileceğiniz seçenekler açıklanmıştır.
#### AppBar In App If You Want
Make `appBarIsExist` `true` in the `WebsiteData.dart` file.
#### List of Fonts in the App
You can use the font names in the list below in your project.
- Montserrat
- Comfortaa
- Abel
- Nunito
- Roboto
#### Signing the App and Getting Build in Release Mode
[Click](https://flutter.dev/docs/deployment/android) here to reach the official document.
#### Publishing the app on the Google Play Store
If you build in release mode after signing the app, you can publish the app via google play developer console.

## Developers
Berke Kurnaz <br/>
www.berkekurnaz.com

## Contact
kurnaz.berke1907@gmail.com

## Sample Images
![image1](https://i.resimyukle.xyz/x0K92c.png)
![image2](https://i.resimyukle.xyz/HdTGKO.png)
![image3](https://i.resimyukle.xyz/7xLKbP.png)