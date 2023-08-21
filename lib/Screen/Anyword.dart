import 'dart:math';
import 'package:flutter/material.dart';
import '../Data/DataManager.dart';
import '../Function/Build_ButtonScreenback.dart';
import '../Function/Build_MyScreen.dart';

class Screen_Anyword extends StatefulWidget {
  const Screen_Anyword({super.key});

  @override
  State<Screen_Anyword> createState() => _Screen_AnywordState();
}

class _Screen_AnywordState extends State<Screen_Anyword> {
  String strShow = "Ready !!";

  @override
  Widget build(BuildContext context) {
    return Build_MyScreen(
        strTitle: "마법의 소라에몬 : 아무말 대잔치",
        action: [
          ElevatedButton.icon(
              icon: Icon(
                Icons.settings_rounded,
              ),
              label: Text("Setting"),
              onPressed: () {
                Navigator.pushNamed(
                    context, DataManager().Screen_AnywordSetting);
              })
        ],
        widBody: build_AnywordBody());
  }

  Widget build_AnywordBody() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Image
            build_TopImage(),
            //Show String
            build_ShowString(),
            //PlayButton
            build_PlayButton(),
            //Button Back
            Flexible(
                child: Build_ButtonScreenback(
                    routename: DataManager().Screen_Home)),
          ],
        ),
      ),
    );
  }

  Widget build_TopImage() {
    return Flexible(
        flex: 3,
        child: Container(
          //color: Colors.deepOrange,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Image.asset('assets/images/pixelsora.png',
                      fit: BoxFit.scaleDown)),
              SizedBox(height: 20, width: double.maxFinite),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "마법의 소라에몬",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget build_ShowString() {
    return Flexible(
      child: SizedBox(
          height: 100, child: Text(strShow, style: TextStyle(fontSize: 20))),
    );
  }

  Widget build_PlayButton() {
    return Flexible(
      child: Column(
        children: [
          Flexible(
            child: ElevatedButton.icon(
              icon: Icon(Icons.play_arrow_rounded),
              label: Text('Play'),
              onPressed: () {
                setState(() {
                  //print("Play!! ");
                  String newString = "";
                  int maxNum = DataManager()
                      .getDataAnyword()
                      .getSentences_ShowList()
                      .length;
                  int rNum = 0;
                  do {
                    rNum = Random().nextInt(maxNum);
                    newString = DataManager()
                        .getDataAnyword()
                        .getSentences_ShowList()[rNum];
                  } while (strShow == newString);
                  strShow = newString;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
