import 'package:flutter_application_1/app/data/model/user/user_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  String message;
  bool status;
  UserData data;

  User({required this.message, required this.status, required this.data});

  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
