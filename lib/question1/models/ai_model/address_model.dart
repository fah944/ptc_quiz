
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

