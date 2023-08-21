import 'package:flutter/material.dart';
import '../Data/DataManager.dart';
import '../Data/Data_Anyword.dart';
import '../Function/Build_ButtonScreenback.dart';
import '../Function/Build_MyScreen.dart';

Data_Anyword vAnyword = DataManager().getDataAnyword();

class Screen_AnywordSetting extends StatefulWidget {
  const Screen_AnywordSetting({super.key});

  @override
  State<Screen_AnywordSetting> createState() => _Screen_AnywordSettingState();
}

class _Screen_AnywordSettingState extends State<Screen_AnywordSetting> {
  TextEditingController _strAddGroup = TextEditingController();
  TextEditingController _strAddAnswer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Build_MyScreen(
      strTitle: "아무말대잔치 : 설정",
      widBody: build_AnywordSettingBody(),
      bottom: build_AnywordSetting_Bottom(),
    );
  }

  Widget build_AnywordSettingBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              build_Answer(),
              //Text("Total Group : " + vAnyword.getGroupsList().toString()),
              Add_Group()
            ],
          ),
        ),
      ),
    );
  }

  Widget build_AnywordSetting_Bottom() {
    return Build_ButtonScreenback(
        label: Text("Back"), routename: DataManager().Screen_Anyword);
  }

  Widget Add_Group() {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      child: ListTile(
        title: Text("Add Group"),
        leading: Icon(Icons.add),
        onTap: () {
          print("Add Group Tap !!");
          setState(() {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Insert Answer"),
                  //insetPadding: EdgeInsets.symmetric(horizontal: 200, vertical: 350),
                  actions: [
                    MaterialButton(
                        child: Text("OK"),
                        onPressed: () {
                          setState(() {
                            // Add Answer
                            vAnyword.addGroup(_strAddGroup.text);
                            Navigator.pop(context);
                          });
                        }),
                    MaterialButton(
                        child: Text("Cancle"),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                  content: Container(
                    height: 100,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          controller: _strAddGroup,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          });
        },
      ),
    );
  }

  Widget build_Answer() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: vAnyword.getGroupsList().length,
      itemBuilder: (context, index) {
        String strGroup = vAnyword.getGroupsList().elementAt(index);
        bool vCheck = vAnyword.getGroup_Show(strGroup);
        //var vmAnswer = vAnyword.getGroup(strGroup);

        return Column(children: [
          ExpansionTile(
            tilePadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    build_GroupCheckbox(vCheck, strGroup),
                    SizedBox(width: 10),
                    Text(strGroup),
                  ],
                ),
                // Group delete
                IconButton(
                    onPressed: () {
                      // Check dialog
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Group Delete"),
                            actions: [
                              MaterialButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    setState(() {
                                      vAnyword.delGroup(strGroup);
                                      Navigator.pop(context);
                                    });
                                  }),
                              MaterialButton(
                                  child: Text("Cancle"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  })
                            ],
                            content: Container(
                              height: 100,
                              width: 300,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("그룹 " "$strGroup" "의 답변들도 모두 지워집니다."),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.close)),
              ],
            ),
            //textColor: Colors.white,
            //backgroundColor: Colors.orangeAccent,
            //collapsedBackgroundColor: Colors.orangeAccent,
            initiallyExpanded: false,
            controlAffinity: ListTileControlAffinity.leading,
            /*leading: Checkbox(
              value: vCheck,
              activeColor: Colors.black,
              onChanged: (vCheck) {
                setState(() {
                  print("Group Checkbox : $vCheck");
                  vAnyword.setGroup_Show(strGroup, vCheck!);
                });
              },
            ),*/

            childrenPadding: EdgeInsets.fromLTRB(45, 0, 0, 0),
            children: [
              Listbuilder_Answer(strGroup),
              Add_Sentece(context, strGroup),
            ],
          ),
        ]);
      },
    );
  }

  Checkbox build_GroupCheckbox(bool vCheck, String strGroup) {
    return Checkbox(
      value: vCheck,
      activeColor: Colors.black,
      onChanged: (vCheck) {
        setState(() {
          print("Group Checkbox : $vCheck");
          vAnyword.setGroup_Show(strGroup, vCheck!);
        });
      },
    );
  }

  ListView Listbuilder_Answer(String strGroup) {
    return ListView.builder(
      shrinkWrap: true,
      //padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
      itemCount: vAnyword.getSentenceUnit(strGroup).length,
      itemBuilder: (context, index) {
        List temp = vAnyword.getSentenceUnit(strGroup);
        if (temp.isEmpty) {
          return Text("No Answer");
        }
        bool bShow = temp[index][0];
        return CheckboxListTile(
          //tileColor: Colors.deepOrange,
          activeColor: Colors.black,
          title: Text(temp[index][1].toString()),
          value: bShow,
          onChanged: (bShow) {
            setState(() {
              print("Check Answer : $strGroup, $index, $bShow");
              vAnyword.setShow_SentenceIndex(strGroup, index, bShow!);
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          // delete Answer
          secondary: IconButton(
              onPressed: () {
                setState(() {
                  vAnyword.delSentenceIndex(strGroup, index);
                });
              },
              icon: Icon(Icons.close)),
        );
      },
    );
  }

  Widget Add_Sentece(BuildContext context, String strGroup) {
    return Container(
      //padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
      //color: Colors.cyan,
      height: 50,
      alignment: Alignment.centerLeft,
      child: ListTile(
        title: Text("Add Answer"),
        leading: Icon(Icons.add),
        onTap: () {
          //print("Add Answer Tap !!");
          setState(() {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Insert Answer"),
                  //insetPadding: EdgeInsets.symmetric(horizontal: 200, vertical: 350),
                  actions: [
                    MaterialButton(
                        child: Text("OK"),
                        onPressed: () {
                          setState(() {
                            // Add Answer
                            vAnyword.addSentence(strGroup, _strAddAnswer.text);
                            Navigator.pop(context);
                          });
                        }),
                    MaterialButton(
                        child: Text("Cancle"),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                  content: Container(
                    height: 100,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          controller: _strAddAnswer,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          });
        },
      ),
    );
  }
}
