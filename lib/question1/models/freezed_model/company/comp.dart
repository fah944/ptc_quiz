

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ptc_quiz/question1/models/freezed_model/address/address.dart';
import 'package:ptc_quiz/question1/models/freezed_model/department/department.dart';

part 'comp.freezed.dart'; 
part 'comp.g.dart'; 
@freezed
class Comp with _$Comp
{
  
  const factory Comp({
    required int isActive,
    required String name,
    required Address? addressModel,
    required String established,
    required List<Department> departments
  }) = _Comp;

  factory Comp.fromJson(Map<String,dynamic> json)=>_$CompFromJson(json);

}


