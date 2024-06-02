
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ptc_quiz/question1/models/freezed_model/company/comp.dart';

part 'using_freezed.freezed.dart'; 
part 'using_freezed.g.dart'; 

@freezed 
class JsonFreezedModel with _$JsonFreezedModel{

 const factory JsonFreezedModel({required Comp company}) =_JsonFreezedModel;

  factory JsonFreezedModel.fromJson(Map<String,dynamic> json)=>_$JsonFreezedModelFromJson(json);


}
