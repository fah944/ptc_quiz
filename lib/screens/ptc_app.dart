

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ptc_quiz/screens/home/home_screen.dart';
import '../core/utils/app_router.dart';
import '../question1/models/manual_model/manual_model.dart';
import '../question1/models/ai_model/using_ai.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp(
     
     debugShowCheckedModeBanner: false,
      home: PTCQuizApp(),
    );
  }
}




class PTCQuizApp extends StatelessWidget {
  const PTCQuizApp({super.key});


  // please switch the path..
  //  
  // test1 or test2
   Future<String> _loadAsset() async
  {

    return await rootBundle.loadString('assets/test1.json');
   }
   

   Future<void> _loadData() async
   {
    String jsonString = await _loadAsset();
    var json =jsonDecode(jsonString);

     ManualModel  model = ManualModel.fromJson(json);
    //UseAIModel model = UseAIModel.fromJson(json);
       print(model.toString());
    
   }


  @override
  Widget build(BuildContext context) {
    _loadData();
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      routes:AppRouter.router,
      initialRoute:HomeScreen.route,
    );
  }
}