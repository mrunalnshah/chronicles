import 'package:flutter/material.dart';
import 'package:chronicles/utilities/image_import/logo_import.dart';
import 'package:chronicles/utilities/components/buttons/infinite_width_button.dart';
import 'package:chronicles/screens/auth/login_screen.dart';
import 'package:chronicles/screens/auth/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  // Logo Height and Width
  double logoWidth = 100.0;
  double logoHeight = 100.0;

  // Chronicles Text Style
  String chroniclesText = 'Chronicles';
  final chroniclesTextStyle = TextStyle(
    height: 0.9,
    fontSize: 48.0,
    fontFamily: 'Abyssinica_SIL',
    fontWeight: FontWeight.w400,
    color: Color(0xFF4EABCC),
  );

  // Write Your Journey Text Style
  String writeYourJourneyText = 'Write Your Journey';
  // double writeYourJourneyLeftPadding = 70.0;
  final writeYourJourneyTextStyle = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Hind',
    fontWeight: FontWeight.w500,
    color: Color(0xFF858585),
  );

  // Button Label Text Style
  double verticalButtonMargin = 7.0;
  double googleButtonBorderWidth = 2.0;
  double googleLogoTextPartitionWidth = 20.0;
  String signInText = 'Sign In';
  String signUpText = 'Sign Up';
  Color signInTextColor = Colors.white;
  Color signUpTextColor = Colors.white;
  String continueWithGoogleText = 'Continue With Google';
  Color continueWithGoogleBGColor = Colors.white;
  Color continueWithGoogleBorderColor = Color(0xFF111519);
  Color continueWithGoogleTextColor = Color(0xFF2C3339);
  String logoPathForGoogle = 'assets/images/logo/googleLogo.png';

  TextStyle buttonLabelTextStyle({required Color textColor}) {
    return TextStyle(
      color: textColor, // Dynamically set the text color
      fontSize: 17,
      fontWeight: FontWeight.w400,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chroniclesText,
                        style: chroniclesTextStyle,
                      ),
                      Text(
                        writeYourJourneyText,
                        style: writeYourJourneyTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                infiniteRoundWidthButton(
                  onPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  buttonLabel: Text(
                    signInText,
                    style: buttonLabelTextStyle(textColor: signInTextColor),
                  ),
                  verticalMargin: verticalButtonMargin,
                ),
                infiniteRoundWidthButton(
                  onPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  buttonLabel: Text(
                    signUpText,
                    style: buttonLabelTextStyle(textColor: signUpTextColor),
                  ),
                  verticalMargin: verticalButtonMargin,
                ),
                infiniteRoundWidthButton(
                  onPress: () {},
                  backgroundColor: continueWithGoogleBGColor,
                  borderWidth: googleButtonBorderWidth,
                  borderColor: continueWithGoogleBorderColor,
                  buttonLabel: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(logoPathForGoogle),
                      SizedBox(
                        width: googleLogoTextPartitionWidth,
                      ),
                      Text(
                        continueWithGoogleText,
                        style: buttonLabelTextStyle(
                            textColor: continueWithGoogleTextColor),
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
