import 'package:flutter/material.dart';
import 'package:magic_counter/shared/constants/app_colors.dart';

class SimpleRoundButton extends StatelessWidget {
  final String buttonText;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? width, height;
  final Function? onPressed;
  final Color? backgroundColor;

  const SimpleRoundButton({
    super.key,
    required this.buttonText,
    this.fontSize,
    this.textColor,
    this.textAlign,
    this.width,
    this.height,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor: backgroundColor == null
            ? AppColors.buttonPrimaryColor
            : backgroundColor!,
        fixedSize: Size(
          width == null ? 80 : width!.toDouble(),
          height == null ? 40 : height!.toDouble(),
        ),
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed == null ? () {} : onPressed as void Function()?,
      child: Text(
        buttonText,
        textAlign: textAlign ?? TextAlign.center,
        style: TextStyle(
          fontSize: fontSize ?? 20,
          fontWeight: FontWeight.bold,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
