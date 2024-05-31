

// Hi To parse this JSON data, do
//
//    ManualModel  model = ManualModel.fromJson(json);  in >> ptc_app.dart


import 'company_model.dart';

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



