

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ptc_quiz/question1/models/freezed/address/address.dart';
import 'package:ptc_quiz/question1/models/freezed/department/department.dart';

part 'comp.freezed.dart'; 
part 'comp.g.dart'; 
@freezed
class Comp with _$Comp
{
  
  const factory Comp({
    required int isActive,
    required String name,
     Address? addressModel,
    required String established,
    required List<Department> departments
  }) = _Comp;

  factory Comp.fromJson(Map<String,dynamic> json)=>_$CompFromJson(json);


/*
   @override
  String toString() {
    return " isActive is $isActive ,name is $name ,addressModel : $addressModel ,established in ${DateTimeHelper.formatDateToUTC(established)}, departmentModel : $departments  ";
  }*/
}


