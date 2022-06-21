import 'package:chaf_engine/data/local/shared_prefs.dart';
import 'package:flutter/foundation.dart';

class Settings{

  setUrl(String url){
    SharePrefs().save("url", url);
  }

  secretKey(String valueKey){
    SharePrefs().save("secretKey", valueKey);
  }
}