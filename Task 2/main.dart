import 'data_bank.dart';
import 'json_modal.dart';
import 'dart:io';

void main() {
  stdout.write("Enter Project ID:");
  String? projectId = stdin.readLineSync();
  print("");
  print("${projectId} project members details\n");

  bool found = false;

  for (int i = 0; i < dataBank.length; i++) {
    ProjectMember member = ProjectMember.fromJson(dataBank[i]);

    if (member.projectId == projectId) {
      found = true;
      print("Name: ${member.name}");
      print("Role: ${member.role}");
      print("Phone: ${member.phone}");
      print("Email: ${member.email}");
      print("Joining Date: ${member.joiningDate}");
      print("----------------------\n");
    }
  }

  if (!found) {
    print("No members found for project ID $projectId.");
  }
}
