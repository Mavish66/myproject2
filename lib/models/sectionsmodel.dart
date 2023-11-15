class Sections {
  int? id;
  String? created_at;
  String? updated_at;
  String? code;
  String? description;
  String? hospitality_type;
  String? store_code;
  String? is_active;

  Sections.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.code = json["code"];
    this.hospitality_type = json["hospitality_type"];
    this.store_code = json["store_code"];
    this.is_active = json["is_active"];
  }

  Sections.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.code = json["code"];
    this.hospitality_type = json["hospitality_type"];
    this.store_code = json["store_code"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "code": code,
      "hospitality_type": hospitality_type,
      "store_code": store_code,
      "is_active": is_active,
    };
  }
}
