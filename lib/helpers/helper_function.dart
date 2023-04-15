import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  // Keys

  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";



  // Saving the data from SharedPreferences


  // Getting the data from SharedPreferences
  //! To check wether user is loggedIn or not
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }

}