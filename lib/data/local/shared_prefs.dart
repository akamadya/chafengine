import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefs{
  
  Future<void> save(String key, dynamic value) async{
    final prefs = await SharedPreferences.getInstance();
    if (value is int){
      await prefs.setInt(key, value);
    } else if(value is String){
      if(kDebugMode){
        print("sharePref, val = $value");
      }
      await prefs.setString(key, value).then((value) => debugPrint("String isSuccess = $value"));
    } else if(value is double){
      await prefs.setDouble(key, value);
    } else if(value is bool){
      await prefs.setBool(key, value);
    }
  }

  Future<int> getInt(String key) async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  Future<String> getValueString(String key) async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  Future<double> getDouble(String key) async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0;
  }

  Future<bool> getBool(String key) async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  String getString(String key){
    String result = "";
    getValueString(key).then((value) => {
       result = value,
       debugPrint("getString value = $value, result = $result")
    });

    debugPrint("getString result = $result");

    return result;
  }
}