

import 'package:awr_flutter_application/core/helpers/cash_helpers.dart';

Future<bool>
 signOut() async{
return 
  await CacheHelper.removeAllData(); 
}


//   _cashUserData({
//     required String token,
//     required String userName,
//     required String userID,
//     String? userPhoneNumber,
//     String? userEmail,
//   }) async {
//     // userToken = token;
//     // userName = userName;
//     // userID = userID;
//     // userPhoneNum = userPhoneNumber;
//     // userEmail = userEmail;
// //
// //
// //
// //
//     await CacheHelper.setData(key: AppConstants.cachedUserToken, value: token);
//     await CacheHelper.setData(
//         key: AppConstants.cachedUserName, value: userName);

//         await CacheHelper.setData(
//         key: AppConstants.cachedUserID, value: userID);
//     await CacheHelper.setData(
//         key: AppConstants.cachedUserPhonNum, value: userPhoneNumber);
//     await CacheHelper.setData(
//         key: AppConstants.cachedUserEmail, value: userEmail ?? "");

//     cashedUserName = userName;
//     cashedUserID = userID;
//     cashedUserEmail = userEmail ?? "";
//     cashedUserToken = token;
//     cashedUserPhoneNum = userPhoneNumber ?? "";
//   }