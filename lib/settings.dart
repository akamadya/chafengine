import 'package:chaf_engine/data/local/share_p.dart';
import 'package:chaf_engine/data/local/shared_prefs.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings{

  instance() async {
    SharedP.preferences = await SharedPreferences.getInstance();
  }

  late String url;

  setUrl(String url){
    this.url = url;
    SharePrefs().save("chaf_url", url);
  }

  getUrl(){
    return url;
  }

  secretKey(String valueKey){
    SharePrefs().save("chaf_secretKey", valueKey);
  }
}