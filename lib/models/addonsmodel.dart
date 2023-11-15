class Addons {
  int? id;
  String? created_at;
  String? updated_at;
  String? parent_item_no;
  String? line_no;
  String? type;
  String? no;
  String? assembly_bom;
  String? description;
  String? unit_of_measure_code;
  String? quantity_per;
  String? bom_description;
  String? resource_usage_type;
  String? bom_recipe_version_code;
  String? bom_component_type;
  String? recipe_version_code;
  String? wastage_;
  String? gross_weight;
  String? net_weight;
  String? cost;
  String? exclude_from_menu_requisition;
  String? excluded_from_portion_weight;
  String? unaff_by_multipl_factor;
  String? item_no;
  String? qty_per_recipe_noof_portions;
  String? exclusion;
  String? price_on_exclusion;
  String? Category;

  Addons.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"] ?? "0";
    this.updated_at = json["updated_at"] ?? "0";
    this.parent_item_no = json["parent_item_no"];
    this.line_no = json["line_no"];
    this.type = json["type"];
    this.no = json["no"];
    this.assembly_bom = json["assembly_bom"];
    this.description = json["description"];
    this.unit_of_measure_code = json["unit_of_measure_code"];
    this.quantity_per = json["quantity_per"];
    this.bom_description = json["bom_description"];
    this.resource_usage_type = json["resource_usage_type"];
    this.bom_recipe_version_code = json["bom_recipe_version_code"];
    this.bom_component_type = json["bom_component_type"];
    this.recipe_version_code = json["recipe_version_code"];
    this.wastage_ = json["wastage_"];
    this.gross_weight = json["gross_weight"];
    this.net_weight = json["net_weight"];
    this.cost = json["cost"];
    this.exclude_from_menu_requisition = json["exclude_from_menu_requisition"];
    this.excluded_from_portion_weight = json["excluded_from_portion_weight"];
    this.unaff_by_multipl_factor = json["unaff_by_multipl_factor"];
    this.item_no = json["item_no"];
    this.qty_per_recipe_noof_portions = json["qty_per_recipe_noof_portions"];
    this.exclusion = json["exclusion"];
    this.price_on_exclusion = json["price_on_exclusion"];
    this.Category = json["Category"] ?? "0";
  }

  Addons.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"] ?? "0";
    this.updated_at = json["updated_at"] ?? "0";
    this.parent_item_no = json["parent_item_no"];
    this.line_no = json["line_no"];
    this.type = json["type"];
    this.no = json["no"];
    this.assembly_bom = json["assembly_bom"];
    this.description = json["description"];
    this.unit_of_measure_code = json["unit_of_measure_code"];
    this.quantity_per = json["quantity_per"];
    this.bom_description = json["bom_description"];
    this.resource_usage_type = json["resource_usage_type"];
    this.bom_recipe_version_code = json["bom_recipe_version_code"];
    this.bom_component_type = json["bom_component_type"];
    this.recipe_version_code = json["recipe_version_code"];
    this.wastage_ = json["wastage_"];
    this.gross_weight = json["gross_weight"];
    this.net_weight = json["net_weight"];
    this.cost = json["cost"];
    this.exclude_from_menu_requisition = json["exclude_from_menu_requisition"];
    this.excluded_from_portion_weight = json["excluded_from_portion_weight"];
    this.unaff_by_multipl_factor = json["unaff_by_multipl_factor"];
    this.item_no = json["item_no"];
    this.qty_per_recipe_noof_portions = json["qty_per_recipe_noof_portions"];
    this.exclusion = json["exclusion"];
    this.price_on_exclusion = json["price_on_exclusion"];
    this.Category = json["Category"] ?? "0";
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "parent_item_no": parent_item_no,
      "line_no": line_no,
      "type": type,
      "no": no,
      "assembly_bom": assembly_bom,
      "description": description,
      "unit_of_measure_code": unit_of_measure_code,
      "quantity_per": quantity_per,
      "bom_description": bom_description,
      "resource_usage_type": resource_usage_type,
      "bom_recipe_version_code": bom_recipe_version_code,
      "bom_component_type": bom_component_type,
      "recipe_version_code": recipe_version_code,
      "wastage_": wastage_,
      "gross_weight": gross_weight,
      "net_weight": net_weight,
      "cost": cost,
      "exclude_from_menu_requisition": exclude_from_menu_requisition,
      "excluded_from_portion_weight": excluded_from_portion_weight,
      "unaff_by_multipl_factor": unaff_by_multipl_factor,
      "item_no": item_no,
      "qty_per_recipe_noof_portions": qty_per_recipe_noof_portions,
      "exclusion": exclusion,
      "price_on_exclusion": price_on_exclusion,
      "Category": Category,
    };
  }
}
