import 'package:flutter/material.dart';

class BorderedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double buttonHeight;
  final double buttonBorderRadius;
  final Widget buttonChild;
  final Color buttonPrimaryColor;
  final Color buttonBorderColor;

  const BorderedButton({
    Key key,
    this.onPressed,
    this.buttonHeight = 60,
    this.buttonBorderRadius = 8.0,
    @required this.buttonBorderColor,
    @required this.buttonPrimaryColor ,
    @required this.buttonChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: double.maxFinite,
        height: this.buttonHeight,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 5.0,
          left: 5.0,
          right: 5.0,
        ), // adjust the padding to change the border
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(this.buttonBorderRadius)),
          border: Border.all(
            color: this.buttonBorderColor,
          ),
          boxShadow: [
            BoxShadow(
              color: this.buttonBorderColor,
              offset: const Offset(0.0, 8.0),
              spreadRadius: 0,
              blurRadius: 20,
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
            primary: this.buttonPrimaryColor,
          ),
          onPressed: onPressed,
          child: this.buttonChild,
        ),
      ),
    );
  }
}
