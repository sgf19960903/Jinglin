import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesName {
  static const String TOKEN = "token";
  static const String USER_INFO = "userInfo";
  static const String OPTIONS = "options";
  static const String LANGUAGE = "language";

}


class SharedPreferencesUtil {

  static void saveMap(Map<String,dynamic> saveMap) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    for(String key in saveMap.keys.toList()){
      dynamic value = saveMap[key];
      if(value is bool){
        await sp.setBool(key, value);
      }else if(value is int){
        await sp.setInt(key, value);
      }else if(value is String){
        await sp.setString(key, value);
      }else if(value is double){
        await sp.setDouble(key, value);
      }else if(value is List<String>){
        await sp.setStringList(key, value);
      }
    }
  }

  static Future<bool> saveBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(key, value);
  }

  static Future<bool?> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  static Future<bool?> saveString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<bool?> saveDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setDouble(key, value);
  }

  static Future<double?> getDouble(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key);
  }

  static Future<bool?> saveInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static Future<bool?> saveStringList(String key, List<String> value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setStringList(key, value);
  }

  static Future<List<String>?> getStringList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  static Future<bool> saveDynamicList(String key, List<dynamic> value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> _stringList = value.map((e) => json.encode(e)).toList();
    return await prefs.setStringList(key, _stringList);
  }

  static Future<List<dynamic>> getDynamicList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List value = prefs.getStringList(key)??[];
    return value.map((e) => json.decode(e)).toList();
  }

  static Future<bool> containsKey(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  static Future<bool> remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  static Future<bool> clear(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }

}
