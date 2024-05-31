

// Hi To parse this JSON data, do
//
//    ManualModel  model = ManualModel.fromJson(json);  in >> ptc_app.dart

import 'package:intl/intl.dart';

import '../../helper/date_time_helper.dart';

class ManualModel{
  CompanyModel companyModel;

  ManualModel({required this.companyModel});

  factory ManualModel.fromJson(Map<String,dynamic> json)
  {
    return ManualModel(companyModel: CompanyModel.fromJson(json['company']));
  }

  @override
  String toString() {
    return " companyModel : ${companyModel.toString()}";
  }


  

}

class CompanyModel
{
  int isActive;
  String name;
  AddressModel? addressModel;
  String established;
  List<DepartmentModel> departments;

  CompanyModel({
    required this.isActive,
    required this.name,
    required this.addressModel,
    required this.established,
    required this.departments
  });

  factory CompanyModel.fromJson(Map<String,dynamic> json)
  {
    return CompanyModel(
        isActive: json['isActive'],
        name: json['name'],
        addressModel: json['address'] == null ? null : AddressModel.fromJson(json['address']), 
        established: json['established'], 
        departments: toListOfDepartment(json['departments'])
        );
  }




   @override
  String toString() {
    return " isActive is $isActive ,name is $name ,addressModel : $addressModel ,established in ${DateTimeHelper.formatDateToUTC(established)}, departmentModel : $departments  ";
  }
}

 List<DepartmentModel> toListOfDepartment(List<dynamic>list)
{
   List<DepartmentModel>  depList =list.map((e) => DepartmentModel.fromJson(e)).toList();
   return depList;
}
/*"address": {
        "street": "123 Innovation Drive",
        "city": "Techville",
        "state": "CA",
        "postalCode": "94043"
      },*/

class AddressModel
{
  String street;
  String city;
  String state;
  String postalCode;

AddressModel({required this.street,required this.city,required this.state,required this.postalCode});
factory AddressModel.fromJson(Map<String,dynamic>json)
{
  return AddressModel(
    street: json['street'], 
    city:json['city'] , 
    state: json['state'], 
    postalCode: json['postalCode'],);
}

 @override
  String toString() {
    return "street is $street ,city is $city , state is $state,postalCode is $postalCode";
  }
}

/*"departments": [
        {
          "deptId": "D001",
          "name": "Engineering",
          "manager": "Carol Davis",
          "budget": 500000.00,
          "year": 2023,
          "availability": {
            "online": true,
            "inStore": false
          },
          "meeting_time": "14:30"
        }
        
      ]*/
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


class AvailabilityModel{

  bool online;
  bool inStore;

  AvailabilityModel({required this.online,required this.inStore});

  factory AvailabilityModel.fromJson(Map<String,dynamic> json)
  {
    return AvailabilityModel(online: json['online'], inStore: json['inStore']);
  }

  @override
  String toString() {
    return " online is $online,inStore is $inStore";
  }
}

    