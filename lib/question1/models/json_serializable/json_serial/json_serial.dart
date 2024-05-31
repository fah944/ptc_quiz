import 'package:ptc_quiz/question1/models/json_serializable/company/company.dart';
import 'package:json_annotation/json_annotation.dart';

part 'json_serial.g.dart';
@JsonSerializable()
class JsonSerialModel{
  @JsonKey(name:"company")
  Company company;

  JsonSerialModel({required this.company});

  factory JsonSerialModel.fromJson(Map<String,dynamic> json)=>_$JsonSerialModelFromJson(json);
  


Map<String,dynamic> toJson() => _$JsonSerialModelToJson(this);

  @override
  String toString() {
    return " companyModel : ${company.toString()}";
  }
}
/*
part 'using_json_serializable.g.dart';

@JsonSerializable()
class Availability{

@JsonKey(name:"online")
  bool online;
  @JsonKey(name:"inStore")
  bool inStore;

  Availability({required this.online,required this.inStore});

  factory Availability.fromJson(Map<String,dynamic> json) => _$AvailabilityFromJson(json);
  Map<String,dynamic> toJson() => _$AvailabilityToJson(this);

  @override
  String toString() {
    return " online is $online,inStore is $inStore";
  }
}
*/

