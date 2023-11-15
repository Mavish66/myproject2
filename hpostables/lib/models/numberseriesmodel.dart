class NumberSeries {
  int? id;
  String? created_at;
  String? updated_at;
  String? number_label;
  String? number_code;
  String? extra;
  String? is_active;

  NumberSeries.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated"];
    this.number_label = json["number_label"];
    this.number_code = json["number_code"];
    this.is_active = json["is_active"];
  }

  NumberSeries.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated"];
    this.number_label = json["number_label"];
    this.number_code = json["number_code"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "number_label": number_label,
      "number_code": number_code,
      "is_active": is_active,
    };
  }
}
