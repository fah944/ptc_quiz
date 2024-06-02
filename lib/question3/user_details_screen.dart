import 'package:flutter/material.dart';
import 'package:ptc_quiz/question3/get_user.dart';

class UserDetailsScreen extends StatelessWidget {
  final int id;

  UserDetailsScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? userData = getUserById(id); 

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
       
      ),
      body: userData != null 
          ? Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(userData['image']),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        
                      Text(
                      '${userData['first_name']} ${userData['last_name']}',
                       style:const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Text(
                      userData['about'],
                      style:  const TextStyle(fontSize: 16),
                     ),
                 ],)
                    ],
                  ),
                
                 
                ],
              ),
            )
          : const Center(
              child: Text('User not found'),
            ),
    );
  }
}
