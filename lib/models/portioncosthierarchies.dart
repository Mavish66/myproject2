class PortionCostHierarchies {
  int? id;
  String? created_at;
  String? updated_at;
  String? portion_cost_hierarchy_label;
  String? portion_cost_hierarchy_code;
  String? extra;
  String? is_active;

  PortionCostHierarchies.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.portion_cost_hierarchy_label = json["portion_cost_hierarchy_label"];
    this.portion_cost_hierarchy_code = json["portion_cost_hierarchy_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  PortionCostHierarchies.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.portion_cost_hierarchy_label = json["portion_cost_hierarchy_label"];
    this.portion_cost_hierarchy_code = json["portion_cost_hierarchy_code"];
    this.extra = json["extra"];
    this.is_active = json["is_active"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "portion_cost_hierarchy_label": portion_cost_hierarchy_label,
      "portion_cost_hierarchy_code": portion_cost_hierarchy_code,
      "extra": extra,
      "is_active": is_active,
    };
  }
}
