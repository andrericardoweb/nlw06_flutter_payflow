import 'package:flutter/material.dart';
import 'package:nlw06_flutter_payflow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:nlw06_flutter_payflow/modules/home/home_page.dart';
import 'package:nlw06_flutter_payflow/modules/splash/splash_page.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage(),
      },
    );
  }
}