import 'package:flutter/material.dart';

class ImportLogo {
  double width = 20.0;
  double height = 20.0;

  ImportLogo({required this.height, required this.width});

  Image importLogowo() {
    return Image.asset(
      'assets/images/logo/logowo.png',
      width: width,
      height: height,
    );
  }

  Image importLogow() {
    return Image.asset(
      'assets/images/logo/logow.png',
      width: width,
      height: height,
    );
  }
}
