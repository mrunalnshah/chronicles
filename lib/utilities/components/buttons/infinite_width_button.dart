import 'package:flutter/material.dart';

class infiniteRoundWidthButton extends StatelessWidget {
  double horizontalMargin;
  double verticalMargin;
  double horizontalPadding;
  double verticalPadding;
  double height;
  double elevationValue;
  Color backgroundColor;
  Color borderColor;
  Color splashColor;
  Color highlightColor;
  double circularBorderRadius;
  double borderWidth;
  Widget buttonLabel;
  void Function()? onPress;

  infiniteRoundWidthButton({
    this.height = 50.0,
    this.horizontalMargin = 20.0,
    this.verticalMargin = 0.0,
    this.verticalPadding = 15,
    this.horizontalPadding = 0,
    this.elevationValue = 0,
    this.backgroundColor = const Color(0xFF4EABCC),
    this.highlightColor = const Color(0xFFD4D4D4),
    this.splashColor = const Color(0xFFBDBDBD),
    this.circularBorderRadius = 25,
    this.borderWidth = 0,
    this.borderColor = Colors.white,
    required this.onPress,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin, vertical: verticalMargin),
      child: MaterialButton(
        onPressed: onPress,
        color: backgroundColor,
        splashColor: splashColor,
        highlightColor: highlightColor,
        elevation: elevationValue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius),
          side: BorderSide(color: borderColor, width: borderWidth),
        ),
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        child: buttonLabel,
      ),
    );
  }
}
