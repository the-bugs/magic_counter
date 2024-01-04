import 'package:flutter/material.dart';

class SimpleRoundButton extends StatelessWidget {
  final String buttonText;
  final int? width, height;
  final Color? textColor;
  final double? textSize;
  final Color? backgroundColor;
  final Function? onPressed;

  const SimpleRoundButton({
    super.key,
    required this.buttonText,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.textSize,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor:
            backgroundColor == null ? Colors.blue : backgroundColor!,
        fixedSize: Size(
          width == null ? 80 : width!.toDouble(),
          height == null ? 40 : height!.toDouble(),
        ),
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed == null ? () {} : onPressed as void Function()?,
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: textSize ?? 20,
          fontWeight: FontWeight.bold,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
