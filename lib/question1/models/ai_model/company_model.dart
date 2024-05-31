import 'package:ptc_quiz/helper/date_time_helper.dart';
import 'package:ptc_quiz/question1/models/ai_model/address_model.dart';
import 'package:ptc_quiz/question1/models/ai_model/department_model.dart';

class Company {
    int isActive;
    String name;
    Address? address;
    String established;
    List<Department> departments;

    Company({
        required this.isActive,
        required this.name,
        required this.address,
        required this.established,
        required this.departments,
    });

    factory Company.fromJson(Map<String, dynamic> json) => Company(
        isActive: json["isActive"],
        name: json["name"],
        address: json["address"] == null ? null :Address.fromJson(json["address"]),
        established: json["established"],
        departments: List<Department>.from(json["departments"].map((x) => Department.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "is_active": isActive,
        "name": name,
        "address": address?.toJson(),
        "established": established,
        "departments": List<dynamic>.from(departments.map((x) => x.toJson())),
    };

      @override
  String toString() {
    return "isActive $isActive ,name $name, address $address, established ${DateTimeHelper.formatDateToUTC(established)},departments $departments";
  }
}
