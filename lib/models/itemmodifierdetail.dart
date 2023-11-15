class ItemModifierDetail {
  int? id;
  String? created_at;
  String? updated_at;
  String? code;
  String? sub_code;
  String? item_no;
  String? description;
  String? description_2;
  String? qty_per_uom;
  String? max_selection;
  String? min_selection;
  String? price_type;
  String? price_handling;
  String? uom;
  String? usage_category;
  String? priority;

  ItemModifierDetail.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.code = json["code"];
    this.sub_code = json["sub_code"];
    this.item_no = json["item_no"];
    this.description = json["description"];
    this.description_2 = json["description_2"];
    this.qty_per_uom = json["qty_per_uom"];
    this.max_selection = json["max_selection"];
    this.min_selection = json["min_selection"];
    this.price_type = json["price_type"];
    this.price_handling = json["price_handling"];
    this.uom = json["uom"];
    this.usage_category = json["usage_category"];
    this.priority = json["priority"];
  }

  ItemModifierDetail.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.code = json["code"];
    this.sub_code = json["sub_code"];
    this.item_no = json["item_no"];
    this.description = json["description"];
    this.description_2 = json["description_2"];
    this.qty_per_uom = json["qty_per_uom"];
    this.max_selection = json["max_selection"];
    this.min_selection = json["min_selection"];
    this.price_type = json["price_type"];
    this.price_handling = json["price_handling"];
    this.uom = json["uom"];
    this.usage_category = json["usage_category"];
    this.priority = json["priority"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "code": code,
      "item_no": item_no,
      "description": description,
      "description_2": description_2,
      "qty_per_uom": qty_per_uom,
      "max_selection": max_selection,
      "min_selection": min_selection,
      "price_type": price_type,
      "price_handling": price_handling,
      "uom": uom,
      "usage_category": usage_category,
      "priority": priority,
    };
  }
}
