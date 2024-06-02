

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ptc_quiz/question1/models/freezed_model/availability/availability.dart';
part 'department.freezed.dart';
part 'department.g.dart';
@freezed
class Department with _$Department{
        


      const factory  Department({
          required String deptId, 
          required String name, 
          required String manager, 
          required double budget , 
          required String meeting_time, 
           int ?year, 
           Availability ?availability}) =_Department;

        factory Department.fromJson(Map<String,dynamic> json)=>_$DepartmentFromJson(json);

      }