import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'Data_Anyword.dart';

class DataManager {
  // ↓↓↓ Singleton pattern !!
  static final DataManager _instance = DataManager._construction();
  factory DataManager() => _instance;

  DataManager._construction() {
    print("DataManager - Construction");
    Load_Anyword();
  }
  // ↑↑↑ Singleton pattern !!

  // App Title
  String App_Title = '마법의 소라에몬';

  // Screen Route
  String Screen_Home = '/home';
  String Screen_Anyword = '/anyword';
  String Screen_AnywordSetting = '/anyword_setting';
  String Screen_Testfiled = '/testfiled';

  // Assets
  // Images
  String Assets_ImgPixelsora = 'assets/images/pixelsora.png';

  // File Functions
  late SharedPreferences _prefs; // SharedPreferences 객체
  String Data_Filename = "myData";
  String key_Anyword = "Anyword";
  String TestString = "";

  // Data Manage
  // Anyword Functions
  static late Data_Anyword _DataAnyword = new Data_Anyword();

  void Init_BaseAnyword() => _DataAnyword.InitBase();

  Data_Anyword getDataAnyword() {
    //Load_Anyword();
    if (_DataAnyword.isEmpty()) {
      Load_Anyword();
    }
    return _DataAnyword;
  }

  Future<bool> Load_Anyword() async {
    print("Load_Anyword - Hello");
    _prefs = await SharedPreferences.getInstance(); // SharedPreferences 초기화

    if (_prefs.containsKey(key_Anyword)) {
      print("Load_Anyword - Contain why ? $key_Anyword");
      Map<String, dynamic> decodemap =
      jsonDecode(_prefs.getString(key_Anyword)!);
      _DataAnyword.mapAnswer = decodemap;
      return true;
    } else {
      print("Load_Anyword - init ");
      Init_BaseAnyword();
      return false;
    }
  }

  void Save_Anyword() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.setString(key_Anyword, jsonEncode(_DataAnyword.mapAnswer));
    print("Save_Anyword Done !!");
  }

}
