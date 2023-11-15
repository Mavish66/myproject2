class DivisionMasters {
  int? id;
  String? created_at;
  String? updated_at;
  String? division_label;
  String? division_code;
  String? extra;
  String? is_active;

  DivisionMasters.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.division_label = json["division_label"];
    this.division_code = json["division_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  DivisionMasters.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.division_label = json["division_label"];
    this.division_code = json["division_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "division_label": division_label,
      "division_code": division_code,
      "extra": extra,
      "is_active": is_active,
    };
  }
}
