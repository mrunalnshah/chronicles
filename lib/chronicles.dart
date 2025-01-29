/*
* File Name     : chronicles.dart
* Date Created  : 28th January 2025
* last Modified : 28th January 2025
* Group         : trOlsz Group
* Description   : This file is the start point in this app.
*                It runs the app and send it to the next Screen
*                based on the authentication requirements set by
*                the group.
*
*/

import 'package:flutter/material.dart';
import 'package:chronicles/themes/galactic_ocean.dart';
import 'package:chronicles/services/pin_auth.dart';
import 'package:chronicles/services/login_auth.dart';
import 'package:chronicles/screens/auth/welcome_screen.dart';
import 'package:chronicles/screens/auth/pin_login_screen.dart';
import 'package:chronicles/screens/dashboard/dashboard.dart';

void main() {
  runApp(
    Chronicles(),
  );
}

class Chronicles extends StatelessWidget {
  bool isUserLoginActive = isLoginDone();
  bool isPinLoginRequired = isPinRequired();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: galacticOcean,

      // Check condition for login & pin requirements, and go to required screens.
      home: isUserLoginActive
          ? (isPinLoginRequired ? PinLoginScreen() : Dashboard())
          : WelcomeScreen(),
    );
  }
}
