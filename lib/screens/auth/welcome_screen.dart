import 'package:flutter/material.dart';
import 'package:chronicles/utilities/image_import/logo_import.dart';
import 'package:chronicles/utilities/components/buttons/infinite_width_button.dart';
import 'package:chronicles/screens/auth/login_screen.dart';
import 'package:chronicles/screens/auth/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  // Logo Height and Width
  final double logoWidth = 135.0;
  final double logoHeight = 135.0;

  // Expanded Flex Ratio
  final int logoChroniclesWriteYourJourneyFlex = 2;
  final int buttonFlex = 1;

  // Chronicles Text Style
  final String chroniclesText = 'Chronicles';
  final chroniclesTextStyle = TextStyle(
    height: 0.9,
    fontSize: 48.0,
    fontFamily: 'Abyssinica_SIL',
    fontWeight: FontWeight.w400,
    color: Color(0xFF4EABCC),
  );

  // Write Your Journey Text Style
  final String writeYourJourneyText = 'Write Your Journey';
  final double writeYourJourneyLeftPadding = 5.5;
  final writeYourJourneyTextStyle = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Hind',
    fontWeight: FontWeight.w500,
    color: Color(0xFF858585),
  );

  // Button Label Values and Text Style
  final double verticalButtonMargin = 7.0;
  final double buttonHeight = 58.0;
  final double googleButtonBorderWidth = 1.0;
  final double googleLogoTextPartitionWidth = 15.0;
  final String loginText = 'Login';
  final String registerText = 'Register';
  final Color loginTextColor = Color(0xFFFFFFFF);
  final Color registerTextColor = Color(0xFFFFFFFF);
  final Color loginRegisterHighlightColor = Color(0xFF35879F);
  final Color loginRegisterSplashColor = Color(0xFF6BC9E2);
  final String continueWithGoogleText = 'Continue With Google';
  final Color continueWithGoogleBGColor = Color(0xFFFFFFFF);
  final Color continueWithGoogleBorderColor = Color(0xFF111519);
  final Color continueWithGoogleTextColor = Color(0xFF2C3339);
  final String logoPathForGoogle = 'assets/images/logo/googleLogo.png';

  TextStyle buttonLabelTextStyle({required Color textColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      height: 0.5,
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
            flex: logoChroniclesWriteYourJourneyFlex,
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
                      Padding(
                        padding:
                            EdgeInsets.only(left: writeYourJourneyLeftPadding),
                        child: Text(
                          writeYourJourneyText,
                          style: writeYourJourneyTextStyle,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: buttonFlex,
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
                    loginText,
                    style: buttonLabelTextStyle(textColor: loginTextColor),
                  ),
                  verticalMargin: verticalButtonMargin,
                  height: buttonHeight,
                  highlightColor: loginRegisterHighlightColor,
                  splashColor: loginRegisterSplashColor,
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
                    registerText,
                    style: buttonLabelTextStyle(textColor: registerTextColor),
                  ),
                  verticalMargin: verticalButtonMargin,
                  height: buttonHeight,
                  highlightColor: loginRegisterHighlightColor,
                  splashColor: loginRegisterSplashColor,
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
                  height: buttonHeight,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
