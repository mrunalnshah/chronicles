import 'package:flutter/material.dart';
import 'package:chronicles/utilities/image_import/logo_import.dart';
import 'package:chronicles/utilities/components/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  // Logo Height and Width
  double logoWidth = 200.0;
  double logoHeight = 200.0;

  // Button Size

  // Button Text Style
  final buttonLabelTextStyle = TextStyle(
    color: Colors.white, // Text color
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImportLogo(width: logoWidth, height: logoHeight)
                        .importLogowo(),
                    Text('Chronicles'),
                    Text('Write Your Journey'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  longWidthButton(
                    onPress: () {},
                    label: 'SignIn',
                    textStyle: buttonLabelTextStyle,
                  ),
                  longWidthButton(
                    onPress: () {},
                    label: 'SignUp',
                    textStyle: buttonLabelTextStyle,
                  ),
                  longWidthButton(
                    onPress: () {},
                    label: 'Continue With Google',
                    textStyle: buttonLabelTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
