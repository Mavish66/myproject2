class ProductHierarchyLinks {
  int? id;
  String? created_at;
  String? updated_at;
  String? product_id;
  String? hierarchy_id;

  ProductHierarchyLinks.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.product_id = json["product_id"];
    this.hierarchy_id = json["hierarchy_id"];
  }

  ProductHierarchyLinks.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.product_id = json["product_id"];
    this.hierarchy_id = json["hierarchy_id"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "product_id": product_id,
      "hierarchy_id": hierarchy_id,
    };
  }
}
