import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManagemeent {
  //Save First Login
  Future saveIntro(int introPhase) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt("intro", introPhase);
  }

  //Get Login Intro
  Future<int?> getIntroData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt("intro");
  }

  //Get Login Intro
  Future resetPreff() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.clear();
  }

  //Set Logout User
  Future logoutPreff() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove("userID");
    pref.remove("lastLogin");
  }

  //Save last Login Phase
  Future saveLastLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("lastLogin", DateTime.now().toString());
    print("ini adalah save login: ${pref.getString("lastLogin")}");
  }

  //Save Data User Login Phase
  Future saveDataUser(String userID) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("userID", userID);
  }

  //Get last data user Login phase
  Future<String?> getLasDataUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("userID");
  }

  //get timestamp last login phase
  Future<DateTime?> getLastLoginSession() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? timeStamp = pref.getString("lastLogin");
    if (timeStamp == null) {
      return null;
    } else {
      String dateWithT = timeStamp.substring(0, 10);
      DateTime dateTime = DateTime.parse(dateWithT);
      return dateTime;
    }
  }
}
