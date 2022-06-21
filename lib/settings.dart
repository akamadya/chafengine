import 'package:chaf_engine/data/local/share_p.dart';
import 'package:chaf_engine/data/local/shared_prefs.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings{

  // instance() async {
  //   SharedP.preferences = await SharedPreferences.getInstance();
  // }
  //
  // //late String url;
  //
  // setUrl(String url){
  //   this.url = url;
  //   SharePrefs().save("chaf_url", url);
  // }
  //
  // getUrl(){
  //   return url;
  // }
  //
  // secretKey(String valueKey){
  //   SharePrefs().save("chaf_secretKey", valueKey);
  // }

  static String url = "https://gtchatapi.miqbalap.my.id";
  static String secretKey = "te2iKgLsVa";
  static String accessToken = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozMiwiaWF0IjoxNjU1ODIzNDE0LCJleHAiOjE2NTg0MTU0MTR9.sX7_CyxsK1ms5El5J6lYNoNLov9qG7lTrNCImwnNv1I";
  static String refreshToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozMiwiaWF0IjoxNjU1ODIzNDE0LCJleHAiOjE2NTg0MTU0MTR9.2Kj9fPqcA1OnWfUbLlw5Xh1iH6wlTjlS255-k7lJCnU";

  // for login
  // user_code = 2
  // user_email = aka@gmail.com
  // user_name = akamadya
}