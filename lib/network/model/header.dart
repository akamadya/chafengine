import 'package:chaf_engine/data/local/shared_prefs.dart';

class Header{
  Map<String, String> map = <String, String>{};

  Map<String, String> headers(){
    map["X-API-KEY"] = SharePrefs().getString("secretKey") as String;
    map['Authorized'] = SharePrefs().getString("auth") as String;

    return map;
  }
}