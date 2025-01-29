import 'package:flutter/material.dart';
import 'package:chronicles/utilities/image_import/logo_import.dart';
import 'package:chronicles/utilities/components/buttons/infinite_width_button.dart';

class WelcomeScreen extends StatelessWidget {
  // Logo Height and Width
  double logoWidth = 200.0;
  double logoHeight = 200.0;

  // Chronicles Text Style
  String chroniclesText = 'Chronicles';
  final chroniclesTextStyle = TextStyle(
    height: 0.9,
    fontSize: 60.0,
    fontFamily: 'Abyssinica_SIL',
  );

  // Write Your Journey Text Style
  String writeYourJourneyText = 'Write Your Journey';
  double writeYourJourneyLeftPadding = 70.0;
  final writeYourJourneyTextStyle = TextStyle(
    fontSize: 20.0,
    fontFamily: 'Hind',
  );

  // Button Label Text Style
  double verticalButtonMargin = 7.0;
  double googleButtonBorderWidth = 2.0;
  double googleLogoTextPartitionWidth = 20.0;
  String signInText = 'Sign In';
  String signUpText = 'Sign Up';
  String continueWithGoogleText = 'Continue With Google';
  String logoPathForGoogle = 'assets/images/logo/googleLogo.png';

  TextStyle buttonLabelTextStyle({required Color textColor}) {
    return TextStyle(
      color: textColor, // Dynamically set the text color
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  // Build Method Starts
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  Text(
                    chroniclesText,
                    style: chroniclesTextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: writeYourJourneyLeftPadding, top: 0.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        writeYourJourneyText,
                        style: writeYourJourneyTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                infiniteRoundWidthButton(
                  onPress: () {},
                  buttonLabel: Text(
                    signInText,
                    style: buttonLabelTextStyle(textColor: Colors.white),
                  ),
                  verticalMargin: verticalButtonMargin,
                ),
                infiniteRoundWidthButton(
                  onPress: () {},
                  buttonLabel: Text(
                    signUpText,
                    style: buttonLabelTextStyle(textColor: Colors.white),
                  ),
                  verticalMargin: verticalButtonMargin,
                ),
                infiniteRoundWidthButton(
                  onPress: () {},
                  backgroundColor: Colors.white,
                  borderWidth: googleButtonBorderWidth,
                  borderColor: Colors.black,
                  buttonLabel: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(logoPathForGoogle),
                      SizedBox(
                        width: googleLogoTextPartitionWidth,
                      ),
                      Text(
                        continueWithGoogleText,
                        style: buttonLabelTextStyle(textColor: Colors.black),
                      ),
                    ],
                  ),
                  verticalMargin: verticalButtonMargin,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
