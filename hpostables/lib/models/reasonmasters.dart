class ReasonMasters {
  int? id;
  String? created_at;
  String? updated_at;
  String? reason;
  int? reason_type;
  bool? is_active;

  ReasonMasters.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.reason = json["reason"];
    this.reason_type = json["reason_type"];
    this.is_active = json["is_active"]==1;
  }
  ReasonMasters.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.reason = json["reason"];
    this.reason_type = json["reason_type"];
    this.is_active = json["is_active"]==1;
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "reason": reason,
      "reason_type": reason_type,
      "is_active": is_active,
    };
  }
}
