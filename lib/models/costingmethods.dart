class CostingMethods {
  int? id;
  String? created_at;
  String? updated_at;
  String? costing_label;
  String? costing_code;
  String? extra;
  String? is_active;

  CostingMethods.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.costing_code = json["costing_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  CostingMethods.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.costing_code = json["costing_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "costing_code": costing_code,
      "extra": extra,
      "is_active": is_active,
    };
  }
}
