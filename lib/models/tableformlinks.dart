class TableFormLinks {
  int? id;
  String? created_at;
  String? updated_at;
  String? form_id;
  String? table_name;
  String? model_name;
  bool? is_active;
  String? user_id;

  TableFormLinks.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.form_id = json["form_id"];
    this.table_name = json["table_name"];
    this.model_name = json["model_name"];
    this.is_active = json["is_active"] == 1;
    this.user_id = json["user_id"] ?? "Null";
  }

  TableFormLinks.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.form_id = json["form_id"];
    this.table_name = json["table_name"];
    this.model_name = json["model_name"];
    this.is_active = json["is_active"] == 1;
    this.user_id = json["user_id"] ?? "Null";
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "form_id": form_id,
      "table_name": table_name,
      "model_name": model_name,
      "is_active": is_active,
      "user_id": user_id,
    };
  }
}
