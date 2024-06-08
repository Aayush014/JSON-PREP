import 'json_modal.dart';
import 'data_bank.dart';
import 'dart:io';

void main() {
  print("Enter ID:");
  int id = int.parse(stdin.readLineSync()!);

  bool found = false;

  for (int i = 0; i < dataBank.length; i++) {
    UserData userData = UserData.fromJson(dataBank[i]);

    if (userData.id == id) {
      found = true;
      print("${userData.id} person details\n");
      print("id: ${userData.id}");
      print("name: ${userData.name}");
      print("username: ${userData.username}");
      print("email: ${userData.email}");
      print("address:");
      print("     street: ${userData.address.street}");
      print("     suite: ${userData.address.suite}");
      print("     city: ${userData.address.city}");
      print("     zipcode: ${userData.address.zipcode}");
      print("     geo:");
      print("       lng: ${userData.address.geo.lng}");
      print("       lat: ${userData.address.geo.lat}");
      print("phone: ${userData.phone}");
      print("website: ${userData.website}");
      print("company:");
      print("     name: ${userData.company.name}");
      print("     catchPhrase: ${userData.company.catchPhrase}");
      print("     bs: ${userData.company.bs}\n\n");
      break;
    }
  }

  if (!found) {
    print("Person with ID $id not found.");
  }
}
