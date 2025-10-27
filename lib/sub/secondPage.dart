import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'dart:math';

class SecondApp extends StatefulWidget{
  const SecondApp({super.key});

  @override
  _SecondAppState createState() => _SecondAppState();
}

class _SecondAppState extends State<SecondApp>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('오늘의 명언', style: TextStyle(fontFamily: 'HSS', fontSize: 30, color: Colors.white),),
        ),
      ),floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(
        child: const Text('도움말', style: TextStyle(fontFamily: 'ONE', fontSize: 15, color: Colors.black),), onPressed: () {
          showDialog(context: context, 
          builder: (BuildContext context){
            return CupertinoAlertDialog(
              title: const Text('도움말\n', style: TextStyle(fontFamily: 'ONE', fontSize: 20, color: Colors.black),),
              content: const Text('오늘의 명언은 누를 때마다\n명언들을 바뀌어 보여주며\n인생, 시간, 성공 등 다양한\n분야의 명언과 다양한 위인,\n유명인사들의 명언을 담고있습니다. \n\n + 개발자가 남겨놓은 이스터에그 명언도 찾아내보시갈 바랍니다!',
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
                Color.fromARGB(255, 197, 194, 16), Color.fromARGB(255, 180, 11, 138)
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
                        title: const Text('오늘의 명언은:', style: TextStyle(fontSize: 25),),
                        content: Text(Quote(), style: const TextStyle(fontFamily: 'Jamsillight', fontSize: 20),),
                        actions: [
                          CupertinoButton(
                            child: const Text('확인', style: TextStyle(fontSize: 20),),
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
          child: const Text('오늘의 명언', style: TextStyle(fontFamily: 'Jamsil', fontSize: 20, color: Colors.white),),
          ),
        ),
      ),
    );
}
}

Quote() {
  var quote = [
    "일단 시작해라. 나중에 완벽해지면 된다. \n\n - 론 무어 -",
    "멈추지 않는 이상, 얼마나 천천히 가는지는 문제가 되지 않는다. \n\n - 공자 -",
    "하루에 3시간을 걸으면 7년 후에 지구를 한 바퀴 돌 수 있다. \n\n - 작자미상 -",
    "늦었다고 생각할때가 늦은거다. \n\n -박명수-",
    "성공의 비결은 단 한 가지, 잘할 수 있는 일에 광적으로 집중하는 것이다. \n\n - 작자미상 -",
    "자신감 있는 표정을 지으면 자신감이 생긴다. \n\n - 어디서 본 말 -",
    "한 번의 실패와 영원한 실패를 혼동하지 마라. \n\n - 작사미상 -",
    "이렇게 간단한 앱 만드는 것하나도 많은 노력이 들어간다. \n\n - 개발자 -",
    "지금 적극적으로 실행되는 괜찮은 계획이 다음 주의 완벽한 계획보다 낫다. \n\n - 조지 S. 패튼 -",
    "들은 것은 잊어버리고, 본 것은 기억하고 직접 해본 것은 이해한다. \n\n - 공자 -",
    "기회는 없어지지 않는다. 당신이 놓친 것은 다른 사람이 잡는다. \n\n - 작자미상 -",
    "가장 위대한 영광은 한 번도 실패하지 않음이 아니라 실패할 때마다 다시 일어서는 데에 있다. \n\n - 공자 -",
    "다른 사람들이 할 수 있거나 할 일을 하지 말고, 다른 이들이 할 수 없고 하지 않을 일들을 하라. \n\n - 아멜리아 에어하트 -",
    "계산된 위험은 감수하라. 이는 단순히 무모한 것과는 완전히 다른 것이다. \n\n - 조지 S. 패튼 -",
    "이 세상에 보장된 것은 아무것도 없으며 오직 기회만 있을 뿐이다. \n\n - 더글라스 맥아더 -",
    "당신은 지체할 수도 있지만 시간은 그러하지 않을 것이다. \n\n - 벤자민 프랭클린 -",
    "가장 큰 위험은 위험없는 삶이다. \n\n - 스티븐 코비 -",
    "도전은 인생을 흥미롭게 만들며, 도전의 극복이 인생을 의미하게 한다. \n\n - 조슈아 마린 -",
    "우리가 꿈을 추구할 용기만 있다면 우리의 모든 꿈은 이루어 질 수있습니다 \n\n - 월트 디즈니 -",
    "끝 맻기를 처음과 같이하면 실패가 없다.   \n\n - 노자 -",
    "변명 중에서도 가장 어리석고 못난 변명은 ‘시간이 없어서’라는 변명이다. \n\n - 토마스 에디슨 -",
    "참을 인 세번이면 호구다. \n\n - 박명수 -",
    "우리가 할 수 있기 전에 배워야 하는 일들을, 우리는 하면서 배운다. \n\n - 아리스토텔레스 -",
    "행동의 가치는 그 행동을 끝까지 이루는 데 있다. \n\n - 칭기스칸 -",
    "위험은 자신이 무엇을 하는지 모르는 데서 나온다. \n\n - 워렌버핏 -",
    "자신감은 위대한 과업의 첫째 요건이다. \n\n - 사무엘 존슨 -",
    "못 가진 것에 대한 욕망으로 가진 것을 망치지 말라. 하지만 지금 가진 것이 한때는 바라기만 했던 것 중 하나였다는 것도 기억하라. \n\n - 에피쿠로스 -",
    "지금이 제일 비참하다고 할 수 있는 동안은 아직 제일 비참한 게 아니다. \n\n - 윌리엄 셰익스피어 -",
    "낙관주의는 성공으로 인도하는 믿음이다. 희망과 자신감이 없으면 아무것도 이루어질 수 없다. \n\n - 헬렌 켈러 -",
    "행복은 습관이다. \n\n - 하버드 -",
    "어릴 적 나에겐 정말 많은 꿈이 있었고, 그 꿈의 대부분은 많은 책을 읽을 기회가 많았기에 가능했다고 생각한다. \n\n - 빌 게이츠 -",
    "오늘 누군가가 그늘에 앉아 쉴 수 있는 이유는 오래 전에 누군가가 나무를 심었기 때문이다. \n\n - 워렌버핏 -",
    "피할 수 없으면 즐거라. \n\n - 로버트 엘리엇 -",
    "상의 중요한 업적 중 대부분은, 희망이 보이지 않는 상황에서도 끊임없이 도전한 사람들이 이룬 것이다. \n\n - 데일 카네기 -",
    "이 문자를 본 당신은 알고리즘 상 2.173% 확률을 뚫은 행운아입니다. \n\n - 개발자 -",
    "우리가 이룬 것만큼, 이루지 못한 것도 자랑스럽습니다. \n\n - 스티브 잡스 -",
    "인생이 끝날까 두려워하지마라. 당신의 인생이 시작조차 하지 않을 수 있음을 두려워하라. \n\n - 그레이스 한센-",
    "좋은 책을 읽는 것은 과거 몇 세기의 가장 훌륭한 사람들과 이야기를 나누는 것과 같다. \n\n - 르네 데카르트 -",
    "나는 똑똑한 것이 아니라 단지 문제를 더 오래 연구할 뿐이다. \n\n - 알버트 아인슈타인 -",
    "가지고 있는 어떤 재주든 사용하라. 노래를 가장 잘하는 새들만 지저귀면 숲은 너무도 적막할 것이다. \n\n - 헨리 반 다이크-",
    "할 일이 아무것도 없는 것은 즐겁지 않다. 할 일이 많은 데 안 하고 있는 것이 즐거운 것이다. \n\n - 메리 윌슨 리틀 -",
    "지식이 없는 성실은 허약하고 쓸모 없다. 성실이 없는 지식은 위험하고 두려운 것이다. \n\n - 사무엘 존슨 -",
    "제우스신은 모든 인간의 계획을 성취시키지 않는다. \n\n - 호메로스 -",
    "나는 자신이 사는 곳을 자랑스럽게 여기는 사람을 보길 원한다. 나는 그 지역 또한 그가 살고있다는 사실에 자랑스러워하는 모습을 보기 원한다. \n\n - 에이브러햄 링컨 -",
    "일부 천재가 비웃음을 샀다는 사실이 비웃음을 산 모든 사람이 천재라는 것을 의미하지는 않는다. 사람들은 콜럼버스를 비웃고, 풀턴을 비웃고, 라이트형제를 비웃었다. \n\n - 칼 세이건 -",
    "재능이 있거든 가능한 모든 방법으로 사용하라. 쌓아두지 마라. 구두쇠처럼 아껴 쓰지 마라. 파산하려는 백만장자처럼 아낌없이 써라. \n\n - 브렌단 프랜시스 -",
    "중국인은 '위기'를 두 글자로 씁니다. 첫 자는 위험의 의미이고 둘째는 기회의 의미입니다. 위기속에서는 위험을 경계하되 기회가 있음을 명심하십시요. \n\n - 존 F. 케네디 ",
    "인생에 정답은 없다. 선택만 있을뿐이다. 그리고 그 선택에 책임을 지는 것이다. \n\n - 신동엽 -",

  ];
  var random = Random();
  var randomIndex = random.nextInt(quote.length);
  var randomQuote = quote[randomIndex];
  return quote[randomIndex];
}