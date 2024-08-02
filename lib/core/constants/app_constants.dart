// import 'package:cached_network_image/cached_network_image.dart';
import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static const double theDefBaddingTenPixl = 10;
  static const double theDefBaddingFifteenPixl = 15;
  static const double emptySpaceFivePixl = 5;
  // static const double emptySpaceTenPixl = 10;

  static const Radius theNewRadius = Radius.circular(5);
  static const BorderRadius theNewBorderRadius =
      BorderRadius.all(Radius.circular(5));
  static List<BoxShadow> theBoxShdow = [
    BoxShadow(
        blurRadius: 3,
        color: AppColors.greyColor.withOpacity(.3),
        offset: Offset(3, 6))
  ];

  static List<BoxShadow> theLightBoxShdow = [
    BoxShadow(
      blurRadius: 3,
      color: AppColors.greyColor.withOpacity(.1),
      offset: Offset(1, 1),
    ),
  ];

  // TextStyle
  static TextStyle customTitleTextStyle = const TextStyle(
      color: AppColors.mainColor, fontWeight: FontWeight.bold, fontSize: 20);

  static const SizedBox emptySpaceTenPixl = SizedBox(
    width: 10,
    height: 10,
  );

  // CachedNetworkImage userCachedImage = CachedNetworkImage(imageUrl: imageUrl)

  // TextStyle _customTitleTextStyle = TextStyle(
  // color: AppColors.mainColor, fontWeight: FontWeight.bold, fontSize: 20);

  //
  //

  static const String cachedUserName = "cachedUserName";
  static const String cachedUserID = "cachedUserID";
  static const String cachedUserEmail = "cachedUseremail";
  static const String cachedUserPhonNum = "cachedUserPhoNum";
  static const String cachedUserToken = "cachedUserToken";
  static const String cachedUserLang = "cachedUserLang";


  static const String cachedUserLocations = "cachedUserLocations";
  static const String hiveBox = "hivebox";


  //
  //

  static const String cachedRandomeNetworkImage = "https://thispersondoesnotexist.com/"; 
      // static const String cachedRandomeImage = "http://74.208.189.16:3000/images/categories/beauty/beauty.png";
}
