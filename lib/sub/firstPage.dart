import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class FristApp extends StatefulWidget{
  const FristApp({super.key});

  @override
  _FristAppState createState() => _FristAppState();
}

class _FristAppState extends State<FristApp>{

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('대신 결정해줍니다!', style: TextStyle(fontFamily: 'HSS', fontSize: 30, color: Colors.white),),
        ),
      ),floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(
        child: const Text('도움말', style: TextStyle(fontFamily: 'ONE', fontSize: 15, color: Colors.black),), onPressed: () {
          showDialog(context: context, 
          builder: (BuildContext context){
            return CupertinoAlertDialog(
              title: const Text('도움말\n', style: TextStyle(fontFamily: 'ONE', fontSize: 20, color: Colors.black),),
              content: const Text('무엇이든 결정해 줍니다는\n우리가 결정하기 어렵거나\n애매하다고 느끼는 모든\n질문에 대한 답을 랜덤으로\n답해주는 프로그램입니다. \n 직접 마음속으로 결정할\n거리를 생각하고 버튼을\n눌러주시면 됩니다. \n\n Ex) 오늘 치킨을 시켜먹을까요..?',
               style: TextStyle(fontFamily: 'Jamsillight', fontSize: 20, color: Colors.black),),
              actions: [
                CupertinoButton(child: const Text('확인', style: TextStyle(fontSize: 20),),
                            onPressed: (){
                              Navigator.of(context).pop();
                              })
              ],
            );
          });
          },
          ),       
        ), 
      body: Center(
        child: Container(
          width: 350,
          height: 75,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xff7AEBF2), Color(0xff9887FE)
              ],
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ElevatedButton(
            onPressed: () {          
                  showCupertinoDialog(
                    context: context, 
                    builder: (context){
                      return CupertinoAlertDialog(
                        title: const Text('당신의 물음에 대한 답은...\n', style: TextStyle(fontSize: 25),),
                        content: Text(Answer(), style: const TextStyle(fontFamily: 'Jamsil', fontSize: 25),),
                        actions: [
                          CupertinoButton(
                            child: const Text('확인', style: TextStyle(fontSize: 25),),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },)                            
                        ],
                      );
                    });                                   
            },            
            style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: const Text('무엇이든 물어보세요', style: TextStyle(fontFamily: 'Jamsil', fontSize: 20, color: Colors.black),),
          ),      
        ),
      ),     
    );
}
}

// ignore: non_constant_identifier_names
Answer() {
  var answer = [
    "아니.",
    "걍.해.",
    "너무 좋은데?",
    "기다리는 편이 낫다",
    "이건 나도 모르겠다...ㅈㅅ",
    "당장 해라",
    "응",
    "되겠냐고. ㅋㅋㅋㅋ",
    "진심이야?",
    "That's Right",
    "(대충 하지 말라는 뜻)",
    "ㅇㅋ",
    "엥?",
    "그만하고 자라..",
    "음,,,, 글쎄;",
    "조금만 더 참고 기다려라",
    "전혀 망설이지 마라",
    "이건 기회다",
    "별로인듯",
    "응 아니야.",
    "당신이 OK 라면 언제든지 OK 입니다.",
    "ㄹㅇㅋㅋ",
    "진심입니까 휴먼.? (고민 중인 짤)",
    "그건 쫌...",
    "(절레 절레)",
    "너 하고 싶은거 다해",
    "너는 할 수 있다",
    "쥐금이니 !!!!",
    "너가 생각하고 있는것이 맞다고 생각하면 맞는 것이다",
    "너무 걱정하지 마라",
    "어? 나도 같은 생각",
    
  ];
  var random = Random();
  var randomIndex = random.nextInt(answer.length);
  var randomQuote = answer[randomIndex];
  return answer[randomIndex];
}

