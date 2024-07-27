import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData customLightTheme = ThemeData(

  useMaterial3: true,
  // Defines the page transition animations used by MaterialPageRoute
  // for different target platforms.
  // Non-specified target platforms will default to
  // ZoomPageTransitionsBuilder().
  pageTransitionsTheme: const PageTransitionsTheme(

    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(  ),
      TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
    },
  ),
  //
  //

  colorScheme: ColorScheme.fromSwatch().copyWith(primary: AppColors.mainColor),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: AppColors.bgColor,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5,
      fontFamily: 'Cairo',
    ),
    iconTheme: IconThemeData(color: AppColors.mainGreyColor),
  ),
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Cairo',
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.mainColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: AppColors.mainColor,
    unselectedItemColor: AppColors.mainGreyColor,
    selectedIconTheme: IconThemeData(),
    selectedLabelStyle: TextStyle(
      fontFamily: 'Cairo',
      color: AppColors.mainColor,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.mainGreyColor,
      fontFamily: 'Cairo',
    ),
  ),
);
