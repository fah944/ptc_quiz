import 'package:flutter/material.dart';
import 'package:ptc_quiz/question2/screens/category/category_screen.dart';
import 'package:ptc_quiz/question2/screens/lang/lang_screen.dart';
import 'package:ptc_quiz/question2/screens/venues/venues_screen.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  static const route = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int curIndex = 0;

   List<Widget> screens=
   [
     CategoryScreen(),
     VenuesScreen(),
     LangScreen(),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screens[curIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: curIndex,
        onTap: (index) {
                   setState(() {
                   curIndex =index;
                   });

                   },
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.add_home_rounded),  label:'Category' ),
          BottomNavigationBarItem(icon:Icon(Icons.access_time_sharp),  label:'Venues' ),
          BottomNavigationBarItem(icon: Icon(Icons.language_rounded),  label: 'lang'),
        ],
        elevation: 4,
      ),
    );
  }
}