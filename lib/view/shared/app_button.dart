import 'package:flutter/material.dart';
import 'package:awr_flutter_application/core/themes/colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final double? width, height, borderRadius;
  final Color? backgroundColor, textColor, borderColor;
  final bool? hasBorder;
  const AppButton(
      {super.key,
      required this.title,
      this.onTap,
      this.width,
      this.height,
      this.borderRadius,
      this.backgroundColor,
      this.textColor,
      this.hasBorder,
      this.borderColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // radius: 15,
      borderRadius: BorderRadius.circular(borderRadius ?? 15),
      onTap: onTap,
      child: Container(
        width: width ?? 200,
        height: height ?? 45,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            borderRadius ?? 15,
          ),
          border: hasBorder == true
              ? Border.all(
                  color: borderColor ?? AppColors.mainColor,
                  width: 1,
                )
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            // letterSpacing: 2,
            fontWeight: FontWeight.bold,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
