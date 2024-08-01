import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({required String message}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 3,
    // backgroundColor: AppColors.mainGreyColor,
    backgroundColor: AppColors.mainColor,
    textColor: AppColors.bgColor,

    fontSize: 12,
  );
}
