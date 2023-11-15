import 'dart:convert';

class BackOffice {
  int? id;
  String? created_at;
  String? updated_at;
  String? table_name;
  String? role;
  String? is_active;

  BackOffice.fromJson(Map<String, dynamic>json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.table_name = json["table_name"];
    this.role = json["role"];
    this.is_active = json["is_active"];
  }

  BackOffice.fromDBJson(Map<String, dynamic>json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.table_name = json["table_name"];
    this.role = json["role"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "table_name": table_name,
      "role": role,
      "is_active": is_active,
    };
  }
}
