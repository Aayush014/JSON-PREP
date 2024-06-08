class ProjectMember {
  final String name;
  final String role;
  final String phone;
  final String email;
  final String joiningDate;
  final String projectId;

  ProjectMember({
    required this.name,
    required this.role,
    required this.phone,
    required this.email,
    required this.joiningDate,
    required this.projectId,
  });

  factory ProjectMember.fromJson(Map<String, dynamic> json) {
    return ProjectMember(
      name: json['name'],
      role: json['role'],
      phone: json['phone'],
      email: json['email'],
      joiningDate: json['joining_date'],
      projectId: json['project_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'role': role,
      'phone': phone,
      'email': email,
      'joining_date': joiningDate,
      'project_id': projectId,
    };
  }
}
