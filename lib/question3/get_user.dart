import 'package:faker/src/faker.dart';
///idيولد مودل على حسب ال 
getUserById(int? id){
  if(id==null||id<0) return null;
  Map<String,dynamic> user={};
  user={
    "id":id,
    "first_name":faker.person.firstName(),
    "last_name":faker.person.lastName(),
    "about":faker.lorem.words(3).join(' '),
    "image":faker.image.image(),
  };
  return user;
}

/*
 Future<List<String>> getUser() async {
  List<String> items;
  String filePath = "assets/json/usrs.json";
  String jsonString = await rootBundle.loadString(filePath);
  items = List<String>.from(json.decode(jsonString));
  return items;
}*/



