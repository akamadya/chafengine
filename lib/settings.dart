import 'package:chaf_engine/data/local/shared_prefs.dart';

class Settings{

  setUrl(String url){
    SharePrefs().save("url", url);
  }

  secretKey(String valueKey){
    SharePrefs().save("secretKey", valueKey);
  }
}