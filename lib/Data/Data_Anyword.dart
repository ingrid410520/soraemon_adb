//Data_Anyword gData_Anyword = new Data_Anyword();

class Data_Anyword {
  String key_GroupShow = "GShow";
  String key_SentenceUnit = "Answer";
  bool _bInit = false;

  Data_Anyword() {
    print("Data_Anyword - Construct");
    // Init Base or Load Data
    // InitBase();
  }

  Map<String, dynamic> mapAnswer = {};

  bool checkInit() => _bInit;

  void InitBase() {
    //mapAnswer.addAll(mapBaseAnswer);
    _bInit = true;
    if (mapAnswer.isNotEmpty) return;

    addGroupShow("연애", true);
    addSentenceListunit("연애", [
      [true, "걔도 너 좋아해"],
      [false, "거울 보고 다시 생각해 봐"],
      [true, "꿈 깨"],
      [true, "키스 갈겨"],
      [true, "그 영화 이미 봤어요"],
      [true, "라면 먹고 갈래?"],
      [true, "이런 사람 다신 없다"],
      [true, "가는 사람 잡지 말자"],
      [true, "조금 더 과감하게"],
    ]);

    addGroupShow("고민", false);
    addSentenceListunit("고민", [
      [true, "줄건 줘"],
      [false, "인내심은 일단 갖추고 볼 일이다"],
      [true, "콩 한쪽이라도 나눠먹자"],
      [true, "포기란 배추 셀 때나 쓰는 말"],
      [true, "부모님 생각해"],
      [true, "야심을 가져라"],
      [true, "내일을 위해 이만 자자"],
      [true, "복수할 때가 올 거야, 좀만 참아"],
      [true, "나쁜 짓 하면 다 돌아오더라"],
      [true, "참으면 호구된다."],
      [true, "이불 밖은 위험해"],
      [true, "차라리 밖에라도 나가자"],
      [true, "밥 먹고 누우면 거기가 천국이지"],
      [true, "시간은 금이라구"],
      [true, "더러우니까 피해"],
      [true, "맞서 싸워"],
      [true, "속는 셈 치고 믿어보자"],
      [true, "배신은 달콤한 것"],
      [true, "힘이 부족하면 머리가 고생한다."],
      [true, "포기하면 편해"],
      [true, "때려치워"],
      [true, "도망쳐"],
      [true, "지가 하면 로맨스"],
      [true, "필요한 말만 해"],
      [true, "하나를 얻으면 하나를 잃는다"],
      [true, "가질 수 없다면 부숴라"],
      [true, "밟고 올라서지 않으면 올라갈 수 없다."],
      [true, "법대로 해"],
      [true, "법은 존재하나, 굉장히 멀리 있다."],
      [true, "나는 법 없이도 살 사람이다"],
      [true, "뭐든지 타이밍이야"],
      [true, "시간이 약이다"],
      [true, "사람마다 다르다"],
    ]);

    addGroupShow("음식", true);
    addSentenceListunit("음식", [
      [true, "한식"],
      [true, "중식"],
      [true, "일식"],
      [true, "양식"],
      [true, "분식"],
      [true, "시원한 거"],
      [true, "뜨거운 거"],
      [true, "짜장면"],
      [true, "짬뽕"],
      [true, "치킨"],
      [true, "피자"],
      [true, "족발"],
    ]);
    addGroupShow("선택", false);
    addSentenceListunit("선택", [
      [true, "질러라"],
      [true, "아껴야 잘 산다"],
      [true, "그래, 바로 그거"],
      [true, "그거 말고, 옆에 거"],
      [true, "정면승부"],
      [true, "이이제이"],
      [true, "확실해"],
      [true, "맞을 거야"],
      [true, "아닐지도?"],
      [true, "아마 아닐 거야"],
      [true, "잘 모르겠어"],
      [true, "정답은 없다"],
      [true, "예스, 아이 엠!"],
      [true, "더 이상은 Naver.."],
      [true, "안돼"],
      [true, "돼"],
      [true, "그것도 안돼"],
      [true, "당연하지"],
      [true, "그럼"],
      [true, "그래"],
      [true, "절대 안 돼"],
      [true, "무조건 해"],
      [true, "다시 한번 물어봐"],
      [true, "세상에.."],
      [true, "말도 안돼.."],
      [true, "언젠가는 되겠지"],
      [true, "아무것도 하지 마"],
      [true, "다 틀렸어"],
    ]);
    addGroupShow("숫자", false);
    addSentenceListunit("숫자", [
      [true, "1"],
      [true, "2"],
      [true, "3"],
      [true, "4"],
      [true, "5"],
      [true, "6"],
      [true, "7"],
      [true, "8"],
      [true, "9"],
      [true, "10"],
      [true, "100"],
      [true, "1000"],
      [true, "10000"],
      [true, "50000"],
      [true, "100000"],
    ]);
    addGroupShow("날짜", true);
    addSentenceListunit("날짜", [
      [true, "어제"],
      [true, "지금 당장"],
      [true, "내일"],
      [true, "모레"],
      [true, "일주일 뒤"],
      [true, "한달 뒤"],
      [true, "내일의 내가 알아서 할 거야"],
    ]);
    addGroupShow("인물", false);
    addSentenceListunit("인물", [
      [true, "애기"],
      [true, "초딩"],
      [true, "급식"],
      [true, "학식"],
      [true, "스무살"],
      [true, "서른 즈음에"],
      [true, "마흔"],
      [true, "틀딱"],
      [true, "X토미 켜라"],
      [true, "X토미 꺼라"],
      [true, "인싸"],
      [true, "히익, 오따꾸!!"],
      [true, "대통령"],
      [true, "도깨비"],
    ]);
    addGroupShow("기타", false);
    addSentenceListunit("기타", [
      [true, "게살버거의 비법은 내꺼야"],
      [true, "이제 제 껍니다 제 마음대로 할 수 있는 겁니다."],
      [true, "로드롤러다!!!"],
    ]);

    print(mapAnswer.keys.toString());
    print(mapAnswer.values.toString());
  }

  bool isEmpty() {
    return mapAnswer.isEmpty;
  }

  void addGroup(String _strGroup) {
    print("BaseAnwer-addGroup : " + _strGroup);
    if (!mapAnswer.containsKey(_strGroup)) {
      print("BaseAnwer-addGroup : 1 ");
      mapAnswer[_strGroup] = {
        key_GroupShow: true,
        key_SentenceUnit: List.empty(growable: true)
      };
      print("BaseAnwer-addGroup : 2 ");
    }
  }

  void addGroupShow(String _strGroup, bool _bShow) {
    if (!mapAnswer.containsKey(_strGroup)) {
      print("Data_Anyword - AddGroup $_strGroup");
      mapAnswer[_strGroup] = {
        key_GroupShow: _bShow,
        key_SentenceUnit: List.empty(growable: true)
      };
    }
  }

  void delGroup(String _strGroup) {
    if (mapAnswer.containsKey(_strGroup)) {
      mapAnswer.remove(_strGroup);
    }
  }

  List getGroupsList() {
    return mapAnswer.keys.toList();
  }

  /*Map getGroup(String _strGroupName){
    return mapAnswer[_strGroupName];
  }*/

  bool getGroup_Show(String _strGroup) {
    return mapAnswer[_strGroup][key_GroupShow];
  }

  bool setGroup_Show(String _strGroup, bool _bShow) {
    if (mapAnswer.containsKey(_strGroup)) {
      mapAnswer[_strGroup][key_GroupShow] = _bShow;
      print("setGroup Show Done $_bShow");
      return true;
    }
    print("setGroup Show Fail");
    return false;
  }

  bool addSentence(String _strGroup, String _strSentence) {
    print("addSentence - $_strGroup , $_strSentence");

    if (mapAnswer.containsKey(_strGroup)) {
      print("addSentence - Check Contain $_strGroup");

      List temp = mapAnswer[_strGroup][key_SentenceUnit];
      temp.add([true, _strSentence]);
      return true;
    }
    return false;
  }

  bool addSentenceUnit(String _strGroup, bool _bShow, String _strSentence) {
    if (mapAnswer.containsKey(_strGroup)) {
      List temp = mapAnswer[_strGroup][key_SentenceUnit];
      temp.add([_bShow, _strSentence]);
      return true;
    }
    return false;
  }

  bool addSentenceListunit(String _strGroup, List _listunitSentence) {
    if (mapAnswer.containsKey(_strGroup)) {
      print("Data_Anyword - addSentenceListunit $_strGroup");
      List temp = mapAnswer[_strGroup][key_SentenceUnit];
      temp.addAll(_listunitSentence);
      //mapAnswer.update(_strGroup, (value) => value.addAll(_listunitSentence));
      return true;
    }
    return false;
  }

  bool delSentence(String _strGroup, String _strSentence) {
    if (mapAnswer.containsKey(_strGroup)) {
      List temp = mapAnswer[_strGroup][key_SentenceUnit];
      for (int i = 0; i < temp.length; i++) {
        List unit = temp[i];
        if (unit[1] == _strSentence) {
          temp.removeAt(i);
          mapAnswer.update(_strGroup, (value) => temp);
          return true;
        }
      }
    }
    return false;
  }

  bool delSentenceIndex(String _strGroup, int _index) {
    print("delSentenceIndex - $_strGroup, $_index");
    if (mapAnswer.containsKey(_strGroup)) {
      List temp = mapAnswer[_strGroup][key_SentenceUnit];
      print("Check");
      temp.removeAt(_index.toInt());
      //mapAnswer.update(_strGroup, (value) => temp);
      return true;
    }
    return false;
  }

  List getSentenceUnit(String _strGroup) {
    if (mapAnswer.containsKey(_strGroup)) {
      return mapAnswer[_strGroup][key_SentenceUnit];
    }
    return [];
  }

  List getSentences() {
    List result = List.empty(growable: true);
    mapAnswer.forEach((key, value) {
      List temp = value[key_SentenceUnit];
      temp.forEach((element) => result.add(element[1]));
    });

    return result;
  }

  List getSentences_ShowList() {
    List result = List.empty(growable: true);

    mapAnswer.forEach((key, value) {
      // 1) need check & pass to Group bShow !!
      print("$key : " + value[key_GroupShow].toString());
      if (value[key_GroupShow]) {
        List temp = value[key_SentenceUnit];

        if (temp.isNotEmpty) {
          // 2) reduce is not same with length
          temp.forEach((element) {
            print("getSentences_ShowList - forEach - $key - " +
                element.toString());
            if (element[0] == true) {
              result.add(element[1]);
            }
          });
        }
      }
    });

    return result;
  }

  bool SetShow_Sentence(String _strGroup, String _strSentence, bool _bShow) {
    if (mapAnswer.containsKey(_strGroup)) {
      (mapAnswer[_strGroup][key_SentenceUnit]).forEach((element) {
        if (element[1] == _strSentence) {
          element[0] = _bShow;
          return true;
        }
      });
    }
    return false;
  }

  bool setShow_SentenceIndex(String _strGroup, int _index, bool _bShow) {
    if (mapAnswer.containsKey(_strGroup)) {
      List temp = mapAnswer[_strGroup][key_SentenceUnit];

      if (temp.length > _index) {
        temp[_index][0] = _bShow;
        print("setShow_SentenceIndex Done");
        return true;
      }
      return false;
    }

    print("setShow_SentenceIndex Fail");
    return false;
  }
}

Map<String, dynamic> mapBaseAnswer = {
  "연애": {
    "GShow": true,
    "Answer": [
      [true, "걔도 너 좋아해"],
      [false, "거울 보고 다시 생각해 봐"],
      [true, "꿈 깨"],
      [true, "키스 갈겨"],
      [true, "그 영화 이미 봤어요"],
      [true, "라면 먹고 갈래?"],
      [true, "이런 사람 다신 없다"],
      [true, "가는 사람 잡지 말자"],
      [true, "조금 더 과감하게"],
    ]
  },
  "고민": {
    "GShow": false,
    "Answer": [
      [true, "줄건 줘"],
      [false, "인내심은 일단 갖추고 볼 일이다"],
      [true, "콩 한쪽이라도 나눠먹자"],
      [true, "포기란 배추 셀 때나 쓰는 말"],
      [true, "부모님 생각해"],
      [true, "야심을 가져라"],
      [true, "내일을 위해 이만 자자"],
      [true, "복수할 때가 올 거야, 좀만 참아"],
      [true, "나쁜 짓 하면 다 돌아오더라"],
      [true, "참으면 호구된다."],
      [true, "이불 밖은 위험해"],
      [true, "차라리 밖에라도 나가자"],
      [true, "밥 먹고 누우면 거기가 천국이지"],
      [true, "시간은 금이라구"],
      [true, "더러우니까 피해"],
      [true, "맞서 싸워"],
      [true, "속는 셈 치고 믿어보자"],
      [true, "배신은 달콤한 것"],
      [true, "힘이 부족하면 머리가 고생한다."],
      [true, "포기하면 편해"],
      [true, "때려치워"],
      [true, "도망쳐"],
      [true, "지가 하면 로맨스"],
      [true, "필요한 말만 해"],
      [true, "하나를 얻으면 하나를 잃는다"],
      [true, "가질 수 없다면 부숴라"],
      [true, "밟고 올라서지 않으면 올라갈 수 없다."],
      [true, "법대로 해"],
      [true, "법은 존재하나, 굉장히 멀리 있다."],
      [true, "나는 법 없이도 살 사람이다"],
      [true, "뭐든지 타이밍이야"],
      [true, "시간이 약이다"],
      [true, "사람마다 다르다"],
    ]
  },
  "음식": {
    "GShow": true,
    "Answer": [
      [true, "한식"],
      [true, "중식"],
      [true, "일식"],
      [true, "양식"],
      [true, "분식"],
    ]
  },
  "선택": {
    "GShow": false,
    "Answer": [
      [true, "질러라"],
      [true, "아껴야 잘 산다"],
      [true, "그래, 바로 그거"],
      [true, "그거 말고, 옆에 거"],
      [true, "정면승부"],
      [true, "이이제이"],
      [true, "확실해"],
      [true, "맞을 거야"],
      [true, "아닐지도?"],
      [true, "아마 아닐 거야"],
      [true, "잘 모르겠어"],
      [true, "정답은 없다"],
      [true, "예스, 아이 엠!"],
      [true, "더 이상은 Naver.."],
      [true, "안돼"],
      [true, "돼"],
      [true, "그것도 안돼"],
      [true, "당연하지"],
      [true, "그럼"],
      [true, "그래"],
      [true, "절대 안 돼"],
      [true, "무조건 해"],
      [true, "다시 한번 물어봐"],
      [true, "세상에.."],
      [true, "말도 안돼.."],
      [true, "언젠가는 되겠지"],
      [true, "아무것도 하지 마"],
      [true, "다 틀렸어"],
    ]
  },
  "숫자": {
    "GShow": false,
    "Answer": [
      [true, "1"],
      [true, "2"],
      [true, "3"],
      [true, "4"],
      [true, "5"],
      [true, "6"],
      [true, "7"],
      [true, "8"],
      [true, "9"],
      [true, "10"],
      [true, "100"],
      [true, "1000"],
      [true, "10000"],
    ]
  },
  "날짜": {
    "GShow": true,
    "Answer": [
      [true, "어제"],
      [true, "지금 당장"],
      [true, "내일"],
      [true, "모레"],
      [true, "일주일 뒤"],
      [true, "한달 뒤"],
      [true, "내일의 내가 알아서 할 거야"],
    ]
  },
  "인물": {
    "GShow": false,
    "Answer": [
      [true, "애기"],
      [true, "초딩"],
      [true, "급식"],
      [true, "학식"],
      [true, "스무살"],
      [true, "서른 즈음에"],
      [true, "마흔"],
      [true, "틀딱"],
      [true, "X토미 켜라"],
      [true, "X토미 꺼라"],
      [true, "인싸"],
      [true, "히익, 오따꾸!!"],
      [true, "대통령"],
      [true, "도깨비"],
    ]
  },
  "기타": {
    "GShow": false,
    "Answer": [
      [true, "게살버거의 비법은 내꺼야"],
      [true, "이제 제 껍니다 제 마음대로 할 수 있는 겁니다."],
      [true, "지금까지 먹은 빵의 갯수를 기억하나?"],
    ]
  },
};
