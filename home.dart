class Home {
  String? country;
  String? address;
  getCountry() => country;
}

void main() {
  Home a = Home();
  a.country = "Pakistan";
  print(a.getCountry());
}
