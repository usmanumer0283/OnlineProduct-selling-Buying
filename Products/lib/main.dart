import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:products/screens/AddNewOrder.dart';
import 'package:products/screens/Dashboard.dart';
import 'package:products/screens/FirstScreen.dart';
import 'package:products/screens/Home.dart';
import 'package:products/screens/Order-Support.dart';
import 'package:products/screens/OrderDetails.dart';
import 'package:products/screens/ProductSupport.dart';
import 'package:products/screens/ProductsDetails.dart';
import 'package:products/screens/SecondScreen.dart';
import 'package:products/screens/SignUp.dart';
import 'package:products/screens/Support.dart';
import 'package:products/screens/UserProfile.dart';
import 'package:products/screens/login.dart';
import 'package:products/screens/resetpassword.dart';


import 'screens/Products.dart';

void main() {
  // debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  // runApp(DevicePreview(
  //     builder: (context) =>MyApp()));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      // home: Dashboard(),
      home: Login(),
    );
  }
}





