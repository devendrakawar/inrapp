import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/addmony.dart';
import 'package:flutter_nevig_1/screens/inr_pro.dart';
import 'package:flutter_nevig_1/screens/login_screen.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter_nevig_1/screens/pass_book.dart';
import 'package:flutter_nevig_1/screens/sendmony.dart';
import 'package:flutter_nevig_1/screens/service.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(MyApp()
  //  DevicePreview(
  //enabled: !kReleaseMode,
  //builder: (context) => MyApp(), // Wrap your app
//),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        useInheritedMediaQuery: true, // Set to true
        locale: DevicePreview.locale(context), // Add the locale here
        home: loginscreen(),
        // cretae routs of allpages
        routes: {
          // '/inrpro': (_) => inrpro(),
          //'/Addmony': (_) =>Addmony (),
          // '/Sendmony': (_) => Sendmony(),
          // '/Passbook': (_) => Passbook(),
        });
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}
