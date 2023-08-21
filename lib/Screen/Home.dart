import 'package:flutter/material.dart';

import '../Data/DataManager.dart';
import '../Function/Build_ButtonHomeMenu.dart';
import '../Function/Build_MyScreen.dart';
import '../Function/admob_Loader.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Build_MyScreen(
      strTitle: "마법의 소라에몬 : 결정장애 브레이커",
      widBody: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Image.asset(DataManager().Assets_ImgPixelsora),
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    children: [
                      Build_ButtonHomemenu(
                          strName: "아무말 대잔치",
                          ButtonFunction: () {
                            Navigator.pushNamed(context, DataManager().Screen_Anyword);
                          }),
                      Build_ButtonHomemenu(
                          strName: "룰렛 돌리기 (준비중)", ButtonFunction: () {}),
                      Build_ButtonHomemenu(
                          strName: "폭탄 돌리기 (준비중)", ButtonFunction: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //bottom: ADmobLoader().ShowAD(),
    );
  }
}
