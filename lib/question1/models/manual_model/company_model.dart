
import '../../../helper/date_time_helper.dart';
import 'address_model.dart';
import 'department_model.dart';

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
