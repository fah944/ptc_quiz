
import 'package:faker/faker.dart';

 Future<List<String>> getVenues() async{
  List<String> items=[];

  for(int i=0;i<1000;i++)
  {
        items.add(faker.lorem.words(2).join(' '));

  }
  return items;
}