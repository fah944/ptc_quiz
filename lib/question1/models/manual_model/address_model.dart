
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