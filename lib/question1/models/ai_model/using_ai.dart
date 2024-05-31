// Hi To parse this JSON data, do
//
//   UseAIModel model = UseAIModel.fromJson(json);  in >> ptc_app.dart




import 'package:ptc_quiz/question1/models/ai_model/company_model.dart';

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

