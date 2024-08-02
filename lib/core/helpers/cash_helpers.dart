// ignore_for_file: unnecessary_null_in_if_null_operators

import 'dart:convert';

import 'package:awr_flutter_application/core/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  // String userToken='';
  // String userEmail ='';
  // String userLang ='';

  static init() async {
    // #### write any necessary initializations here #### //

    sharedPreferences = await SharedPreferences.getInstance();
    // globalCachedUserToken = await getData(key: AppConstants.cachedUserToken);
    // globalCachedUserLang = await getData(key: AppConstants.cachedUserLang);
    // globalCachedUserName = await getData(key: AppConstants.cachedUserName);
    // globalCachedUserID = await getData(key: AppConstants.cachedUserID);
    // globalCachedUserPhoneNum = await getData(key: AppConstants.cachedUserPhonNum);
    // globalCachedUserEmail = await getData(key: AppConstants.cachedUserEmail);
    // globalCachedUserLocations = await getUserLocations();

    // #### set the cached data here #### //
    // setToken();
    // getUser
  }

//   static getUserData(){
// userToken = getData(key: AppSharedPrefrences.userToken) ?? '';
// userEmail = getData(key: AppSharedPrefrences.userEmail) ?? '';
// userLang = getData(key: AppSharedPrefrences.userLang) ?? '';
//    }
  static Future<bool> putBoolean(
      {required String key, required bool value}) async {
    return await sharedPreferences!.setBool(key, value);
  }

  static bool? getBoolean({required String key}) {
    return sharedPreferences!.getBool(key) ?? false;
  }

  static Future<bool> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return sharedPreferences!.setString(key, value);
    if (value is bool) return sharedPreferences!.setBool(key, value);
    if (value is int) return sharedPreferences!.setInt(key, value);
    return sharedPreferences!.setDouble(key, value);
  }


//     static Future<void > setLocalLocations({
//     required List<LocalLocationModel> newLocations ,
//     // required dynamic value,
//   }) async {

//      // Method to save a list of LocalLocationModel to shared preferences
//     List<Map<String, dynamic>>
//      locationsJsonList = newLocations.map((location) => location.toJson()).toList();
//     // await prefs.setStringList('locations', locationsJsonList);
  
//  sharedPreferences!.setString(AppConstants.cachedUserLocations, locationsJsonList);

    
//     return sharedPreferences!.setString(AppConstants.cachedUserLocations, newLocation);
//   }



// #### functions to save and get user locations version 2 #### //

  // static const String _keyMap = 'myMap';  
  static Future<bool> saveUserLocations(Map<String, String> map) async {
    // final prefs = await SharedPreferences.getInstance();
    return await sharedPreferences!.setString(AppConstants.cachedUserLocations, map.toString());
  }

  static Future<Map<String, String>> getUserLocations() async {
    // final prefs = await SharedPreferences.getInstance();
    final jsonString = sharedPreferences!.getString(AppConstants.cachedUserLocations);
    if (jsonString == null || jsonString.isEmpty) {
      return {};
    } else {
      final map = Map<String, String>.from(json.decode(jsonString));
      return map;
    }
  }




  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences?.get(key) ?? null;
  }

  static Future<bool> removeData(String key) {
    return sharedPreferences!.remove(key);
  }

    static Future<bool> removeAllData() {
    return sharedPreferences!.clear();
  }
}
