import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  // Keys

  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";



  // Saving the data from SharedPreferences
  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.setBool(userLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSP(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.setString(userLoggedInKey, userName);
  }

  static Future<bool> saveUserEmailSP(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.setString(userLoggedInKey, userEmail);
  }


  // Getting the data from SharedPreferences
  //! To check wether user is loggedIn or not
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }

}