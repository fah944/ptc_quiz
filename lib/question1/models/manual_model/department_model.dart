
import 'availability_model.dart';

class DepartmentModel{
        String deptId;
        String name;
        String manager;
        double budget;
        String meeting_time;
        int? year;
        AvailabilityModel? availability;


        DepartmentModel({
          required this.deptId, 
          required this.name, 
          required this.manager, 
          required this.budget, 
          required this.meeting_time, 
           this.year, 
           this.availability});

        //factory constructor
        factory DepartmentModel.fromJson(Map<String,dynamic> json)
        {
          return DepartmentModel(
            deptId:json['deptId'],
            name:json['name'] ,
            manager:json['manager'], 
            budget: json['budget'],
            meeting_time: json['meeting_time'] ,
            year: json['year'] == null ?null: json['year'] ,
            availability: json["availability"] == null ? null : AvailabilityModel.fromJson(json["availability"]),
            // AvailabilityModel.fromJson(json['availability'])
             );
        }

        @override
       String toString() {
      
         return "id is $deptId , name is $name , manager is $manager,budget is $budget, meeting_time at $meeting_time, year $year,availabilityModel $availability";
        }

      }