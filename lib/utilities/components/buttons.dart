import 'package:flutter/material.dart';

class longWidthButton extends StatelessWidget {
  double horizontalMargin;
  double verticalMargin;
  double horizontalPadding;
  double verticalPadding;
  void Function()? onPress;
  Color color;
  double circularBorderRadius;
  String label;
  TextStyle textStyle;

  longWidthButton({
    this.horizontalMargin = 20.0,
    this.verticalMargin = 0.0,
    required this.onPress,
    this.color = const Color(0xFF4EABCC),
    this.circularBorderRadius = 25,
    this.verticalPadding = 15,
    this.horizontalPadding = 0,
    required this.label,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin, vertical: verticalMargin),
      child: MaterialButton(
        onPressed: onPress,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius),
        ),
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        child: Text(
          label,
          style: textStyle,
        ),
      ),
    );
  }
}
