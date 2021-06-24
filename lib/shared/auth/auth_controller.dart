import 'package:flutter/material.dart';
import 'package:nlw06_flutter_payflow/modules/login/login_page.dart';
import 'package:nlw06_flutter_payflow/modules/splash/splash_page.dart';

class AuthController {
  var _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashPage())
      );
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage())
      );
    }
  }
}
