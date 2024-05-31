
import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_quiz/question1/models/json_serializable/availability/availability.dart';

part 'department.g.dart';
@JsonSerializable()
class Department{
        @JsonKey(name: "deptId")
        String deptId;
        @JsonKey(name: "name")
        String name;
        @JsonKey(name: "manager")
        String manager;
        @JsonKey(name: "budget")
        double budget;
        @JsonKey(name: "meeting_time")
        String meeting_time;
        @JsonKey(name: "year")
        int? year;
        @JsonKey(name: "availability")
        Availability? availability;


        Department({
          required this.deptId, 
          required this.name, 
          required this.manager, 
          required this.budget, 
          required this.meeting_time, 
           this.year, 
           this.availability});

        factory Department.fromJson(Map<String,dynamic> json)=>_$DepartmentFromJson(json);
        
        Map<String,dynamic> toJson()=>_$DepartmentToJson(this);


        @override
       String toString() {
         return "id is $deptId , name is $name , manager is $manager,budget is $budget, meeting_time at $meeting_time, year $year,availabilityModel $availability";
        }

      }