
class UserModel {
  final int id;
  

  UserModel({
    required this.id,
    
  });

 // String get fullName => '$firstName $lastName';

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      
    );
  }
}
