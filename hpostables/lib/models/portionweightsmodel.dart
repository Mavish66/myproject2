class PortionWeights {
  int? id;
  String? created_at;
  String? updated_at;
  String? portion_weight_label;
  String? portion_weight_code;
  String? portion_weight_value;
  String? extra;
  String? is_active;

  PortionWeights.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.portion_weight_label = json["portion_weight_label"];
    this.portion_weight_code = json["portion_weight_code"];
    this.portion_weight_value = json["portion_weight_value"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  PortionWeights.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.portion_weight_label = json["portion_weight_label"];
    this.portion_weight_code = json["portion_weight_code"];
    this.portion_weight_value = json["portion_weight_value"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "portion_weight_label": portion_weight_label,
      "portion_weight_code": portion_weight_code,
      "portion_weight_value": portion_weight_value,
      "extra": extra,
      "is_active": is_active,
    };
  }
}
