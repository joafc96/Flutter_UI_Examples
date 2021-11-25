import 'package:flutter/material.dart';

class BorderedElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double buttonHeight;
  final double buttonBorderRadius;
  final Widget buttonChild;
  final Color buttonForeGroundColor;
  final Color buttonBackGroundColor;
  final Color buttonBorderColor;
  final TextStyle buttonTextStyle;

  const BorderedElevatedButton({
    Key key,
    this.onPressed,
    this.buttonHeight = 56.0,
    this.buttonBorderRadius = 8.0,
    this.buttonTextStyle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w200,
    ),
    this.buttonForeGroundColor, // btn foreground color (system default)
    @required this.buttonBorderColor,
    @required this.buttonBackGroundColor, // btn background color
    @required this.buttonChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 5.0,
        right: 5.0,
      ), // adjust the padding to change the border
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(this.buttonBorderRadius),
        ),
        border: Border.all(
          color: this.buttonBorderColor,
        ),
        boxShadow: [
          BoxShadow(
            color: this.buttonBorderColor,
            offset: const Offset(0.0, 8.0),
            spreadRadius: 0.0,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(this.buttonBorderRadius),
            ),
          ),
          primary: this.buttonBackGroundColor,
          minimumSize: Size(double.maxFinite, buttonHeight),
          textStyle: this.buttonTextStyle,
          onPrimary: this.buttonForeGroundColor,
        ),
        onPressed: onPressed,
        child: this.buttonChild,
      ),
    );
  }
}
