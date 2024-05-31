
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

    