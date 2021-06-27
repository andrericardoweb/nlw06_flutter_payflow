import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nlw06_flutter_payflow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:nlw06_flutter_payflow/modules/home/home_page.dart';
import 'package:nlw06_flutter_payflow/modules/insert_boleto/insert_boleto_page.dart';
import 'package:nlw06_flutter_payflow/modules/splash/splash_page.dart';
import 'package:nlw06_flutter_payflow/shared/models/user_model.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(user: ModalRoute.of(context)!.settings.arguments as UserModel,),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage(),
        "/insert_boleto": (context) => InsertBoletoPage(
          barcode: ModalRoute.of(context)!.settings.arguments as String,
        ),
      },
    );
  }
}
