
import 'package:faker/faker.dart';

Future<List<String>> getCategories() async {
  List<String> items = [];
  for (int i = 0; i < 1000; i++) {
    items.add(faker.lorem.words(3).join(' '));
  }
  return items;
}