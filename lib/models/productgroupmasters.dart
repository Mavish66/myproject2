class ProductGroupMasters {
  int? id;
  String? created_at;
  String? updated_at;
  String? product_group_label;
  String? product_group_code;
  String? extra;
  String? is_active;

  ProductGroupMasters.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.product_group_label = json["product_group_label"];
    this.product_group_code = json["product_group_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  ProductGroupMasters.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.product_group_label = json["product_group_label"];
    this.product_group_code = json["product_group_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "product_group_label": product_group_label,
      "product_group_code": product_group_code,
      "extra": extra,
      "is_active": is_active,
    };
  }
}
