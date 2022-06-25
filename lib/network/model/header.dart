import 'package:chaf_engine/data/local/shared_prefs.dart';
import 'package:chaf_engine/settings.dart';

class Header{
  Map<String, String> map = <String, String>{};

  Map<String, String> headers(){
    // map["X-API-KEY"] = SharePrefs().getString("chaf_secretKey");
    // map['Authorization'] = SharePrefs().getString("chaf_auth");

    map["X-API-KEY"] = Settings.secretKey;
    map['Authorization'] = "Bearer ${Settings.accessToken}";

    return map;
  }
}