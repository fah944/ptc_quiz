import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart'; 
part 'address.g.dart'; 
@freezed
class Address with _$Address
{

const factory Address({
required String street,
required String city,
required String state,
required String postalCode,

}) =_Address;

  factory Address.fromJson(Map<String,dynamic> json)=>_$AddressFromJson(json);
  /*
 @override
  String toString() {
    return "street is $street ,city is $city , state is $state,postalCode is $postalCode";
  }*/
}