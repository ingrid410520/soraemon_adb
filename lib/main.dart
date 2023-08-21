import 'package:flutter/material.dart';
import 'package:soraemon_adb/Data/DataManager.dart';
import 'package:soraemon_adb/Screen/Anyword.dart';
import 'package:soraemon_adb/Screen/Anyword_Setting.dart';
import 'package:soraemon_adb/Screen/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ADmobLoader().Load(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: DataManager().App_Title,
      routes: {
        DataManager().Screen_Home: (context) => AppHome(),
        DataManager().Screen_Anyword: (context) => Screen_Anyword(),
        DataManager().Screen_AnywordSetting: (context) => Screen_AnywordSetting(),
        //DataManager().Screen_Testfiled: (context) => TestFeild(),
      },
      initialRoute: DataManager().Screen_Home,
    );
  }
}
