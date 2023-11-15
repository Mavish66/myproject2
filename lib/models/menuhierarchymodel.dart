class Menuhierarchies {
  int? id;
  String? created_at;
  String? updated_at;
  String? hierarchy_label;
  String? hierarchy_code;
  String? parent_id;
  String? is_active;
  String? section_code;
  String? section_name;

  Menuhierarchies.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.hierarchy_label = json["hierarchy"];
    this.hierarchy_code = json["hierarchy_code"];
    this.parent_id = json["parent_id"];
    this.is_active = json["is_active"];
    this.section_code = json["section_code"] ?? "0";
    this.section_name = json["section_name"] ?? "0";
  }

  Menuhierarchies.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.hierarchy_label = json["hierarchy_label"];
    this.hierarchy_code = json["hierarchy_code"];
    this.parent_id = json["parent_id"];
    this.is_active = json["is_active"];
    this.section_code = json["section_code"] ?? "0";
    this.section_name = json["section_name"] ?? "0";
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "hierarchy_label": hierarchy_label,
      "hierarchy_code": hierarchy_code,
      "parent_id": parent_id,
      "is_active": is_active,
      "section_code": section_code,
      "section_name": section_name,
    };
  }
}
