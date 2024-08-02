import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoadingScreen extends StatefulWidget {
  const CustomLoadingScreen({super.key});

  @override
  State<CustomLoadingScreen> createState() => _CustomLoadingScreenState();
}

class _CustomLoadingScreenState extends State<CustomLoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LoadingAnimationWidget.discreteCircle(
        // leftDotColor: const Color(0xFF1A1A3F),
        // rightDotColor: const Color(0xFFEA3799),

        // color: AppColors.mainColor,
        color: AppColors.mainColor,
        secondRingColor: AppColors.mainGreyColor,
        thirdRingColor: AppColors.mainColor,

        size: 100,
      ),
    ));
  }
}
