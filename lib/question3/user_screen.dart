import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ptc_quiz/question3/user_details_screen.dart';

import 'model/user_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});




 Future<List<UserModel>> _fetchUsers() async {
    String usersJson = await rootBundle.loadString('assets/json/usrs.json');
    List<dynamic> usersData = json.decode(usersJson);
    List<UserModel> users = usersData.map((userData) => UserModel.fromJson(userData)).toList();
    return users;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: FutureBuilder<List<UserModel>>(
        future: _fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<UserModel> users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:  Text('${users[index].id}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailsScreen(id: users[index].id),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }

}









