// Hi To parse this JSON data, do
//
//   UseAIModel model = UseAIModel.fromJson(json);  in >> ptc_app.dart



import 'package:ptc_quiz/helper/date_time_helper.dart';

class UseAIModel {
    Company company;

    UseAIModel({
        required this.company,
    });

    factory UseAIModel.fromJson(Map<String, dynamic> json) {
      return UseAIModel(
        company: Company.fromJson(json["company"]),
    );
    } 

    Map<String, dynamic> toJson() => {
        "company": company.toJson(),
    };


    @override
  String toString() {
    return "company : $company";
  }
}

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

class Address {
    String street;
    String city;
    String state;
    String postalCode;

    Address({
        required this.street,
        required this.city,
        required this.state,
        required this.postalCode,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        postalCode: json["postalCode"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "postalCode": postalCode,
    };

          @override
  String toString() {
    return "street $street, city $city, state $state, postalCode $postalCode";
  }
}

class Department {
    String deptId;
    String name;
    String manager;
    double budget;
    int? year;
    Availability? availability;
    String meetingTime;

    Department({
        required this.deptId,
        required this.name,
        required this.manager,
        required this.budget,
        this.year,
        this.availability,
        required this.meetingTime,
    });

    factory Department.fromJson(Map<String, dynamic> json) => Department(
        deptId: json["deptId"],
        name: json["name"],
        manager: json["manager"],
        budget: json["budget"],
        year: json["year"],
        availability: json["availability"] == null ? null : Availability.fromJson(json["availability"]),
        meetingTime: json["meeting_time"],
    );

    Map<String, dynamic> toJson() => {
        "deptId": deptId,
        "name": name,
        "manager": manager,
        "budget": budget,
        "year": year,
        "availability": availability?.toJson(),
        "meeting_time": meetingTime,
    };

    @override
  String toString() {
    return "id $deptId ,name $name ,manager $manager ,budget $budget ,year $year ,availability $availability ,meeting_time at $meetingTime ";
  }
}

class Availability {
    bool online;
    bool inStore;

    Availability({
        required this.online,
        required this.inStore,
    });

    factory Availability.fromJson(Map<String, dynamic> json) => Availability(
        online: json["online"],
        inStore: json["inStore"],
    );

    Map<String, dynamic> toJson() => {
        "online": online,
        "inStore": inStore,
    };

    @override
  String toString() {
    return "online $online , instore $inStore";
  }
}
