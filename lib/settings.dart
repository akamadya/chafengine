import 'package:chaf_engine/data/local/shared_prefs.dart';
import 'package:flutter/foundation.dart';

class Settings{

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