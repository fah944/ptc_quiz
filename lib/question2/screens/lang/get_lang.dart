
import 'dart:convert';
import 'package:flutter/services.dart';

 Future<List<String>> getLanguages() async {
  List<String> items;
  String filePath = "assets/lottie/languages.json";
  String jsonString = await rootBundle.loadString(filePath);
  items = List<String>.from(json.decode(jsonString));
  return items;
}