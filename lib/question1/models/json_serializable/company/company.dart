
import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_quiz/question1/models/json_serializable/address/address.dart';
import 'package:ptc_quiz/question1/models/json_serializable/department/department.dart';
import '../../../../helper/date_time_helper.dart';

part 'company.g.dart';
@JsonSerializable()
class Company with DateFormatter
{
  @JsonKey(name: "isActive")
  int isActive;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "addressModel")
  Address? addressModel;
  @JsonKey(name: "established")
  String established;
  @JsonKey(name: "departments")
  List<Department> departments;

  Company({
    required this.isActive,
    required this.name,
    required this.addressModel,
    required this.established,
    required this.departments
  });

  factory Company.fromJson(Map<String,dynamic> json)=>_$CompanyFromJson(json);

  Map<String,dynamic> toJson()=>_$CompanyToJson(this);


   @override
  String toString() {
    return " isActive is $isActive ,name is $name ,addressModel : $addressModel ,established in  ${toUTC(established)}, departmentModel : $departments  ";
  }
}

 List<Department> toListOfDepartment(List<dynamic>list)
{
   List<Department>  depList =list.map((e) => Department.fromJson(e)).toList();
   return depList;
}
