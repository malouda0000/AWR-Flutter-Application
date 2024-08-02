import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:flutter/material.dart';

class BublesBackground extends StatelessWidget {
  const BublesBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -150,
          left: -150,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: AppColors.mainColor.withOpacity(.8),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: -400,
          right: -600,
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              color: AppColors.mainColor.withOpacity(.4),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -550,
          left: -200,
          child: Container(
            width: 700,
            height: 700,
            decoration: const BoxDecoration(
              color: AppColors.mainColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -400,
          right: -600,
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              color: AppColors.mainColor.withOpacity(.7),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: -300,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: AppColors.mainColor.withOpacity(.4),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}