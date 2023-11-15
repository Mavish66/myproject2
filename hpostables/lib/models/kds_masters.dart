class KDSMasters {
  int? id;
  String? created_at;
  String? updated_at;
  String? store_id;
  String? kds_id;
  String? is_active;

  KDSMasters.fromJson(json) {
    this.id = json[""];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.store_id = json["store_id"];
    this.kds_id = json["kds_id"];
    this.is_active = json["is_active"];
  }

  KDSMasters.fromDBJson(json) {
    this.id = json[""];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.store_id = json["store_id"];
    this.kds_id = json["kds_id"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "store_id": store_id,
      "kds_id": kds_id,
      "is_active": is_active,
    };
  }
}
