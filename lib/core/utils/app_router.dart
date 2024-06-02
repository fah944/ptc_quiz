import 'package:flutter/material.dart';

import '../../screens/home/home_screen.dart';

class AppRouter{
  static final router =<String,WidgetBuilder>{
    HomeScreen.route:(context) =>  HomeScreen(),

  };
}