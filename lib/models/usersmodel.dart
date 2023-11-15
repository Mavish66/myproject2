class Users {
  int? id;
  String? name;
  String? email;
  String? role;
  String? shift_id;
  String? branch_id;

  Users.fromJson(json) {
    this.id = json["id"];
    this.name = json["name"];
    this.email = json["email"];
    this.role = json["role"] ?? "NULL";
    this.shift_id = json["shift_id"] ?? "NULL";
    this.branch_id = json["branch_id"] ?? "NULL";
  }

  Users.fromDBJson(json) {
    this.id = json["id"];
    this.name = json["name"];
    this.email = json["email"];
    this.role = json["role"] ?? "NULL";
    this.shift_id = json["shift_id"] ?? "NULL";
    this.branch_id = json["branch_id"] ?? "NULL";
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "role": role,
      "shift_id": shift_id,
      "branch_id": branch_id,
    };
  }
}
