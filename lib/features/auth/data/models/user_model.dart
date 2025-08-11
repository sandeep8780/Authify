import 'package:demo1/features/auth/domain/entities/user.dart';

class UserModel extends User{
  const UserModel({required String id , required String name}) :
  super(id : id , name : name);


  factory UserModel.fromJson(Map<String,dynamic> json){
    return UserModel(id: json['id'] as String, name: json['name'] as String);


  }
  Map<String , dynamic> toJson() => {'id': id, 'name': name};


}