import 'package:flutter/material.dart';

import 'model/user_model.dart';

class UserDetailsScreen extends StatelessWidget {
  final UserModel user;

  UserDetailsScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     /*  user={
    "id":id,
    "first_name":faker.person.firstName(),
    "last_name":faker.person.lastName(),
    "about":faker.lorem.words(3).join(' '),
    "image":faker.image.image(),
  };*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(""),//user.image
                ),
                const SizedBox(width: 10,),
                const Text(
              "complete name",
              style:  TextStyle(fontSize: 18),
            ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              "about",
              style:TextStyle(fontSize: 18),
            ),
          
          ],
        ),
      ),
    );
  }
}

