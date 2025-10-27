import 'package:flutter/material.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ), 
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
with SingleTickerProviderStateMixin{


   @override
  Widget build(BuildContext context){
    return Scaffold(
      body: TabBarView(
        children: const <Widget>[FristApp(), SecondApp()],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(tabs: const <Tab>[
        Tab(icon: Icon(Icons.psychology_alt, color: Colors.blue),text: '대신 결정해줍니다!',),
        Tab(icon: Icon(Icons.auto_stories, color: Colors.blue),text: '오늘의 명언',)
      ], controller: controller,
      ),
    );
  }
  late TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 2 , vsync: this);
  }
}
  late TabController controller;
  @override
  void dispose(){
    controller.dispose();
    dispose();
  }

 