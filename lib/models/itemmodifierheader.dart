class ItemModifierHeader {
  int? id;
  String? created_at;
  String? updated_at;
  String? code;
  String? description;
  String? prompt;
  String? display_option;
  String? once_per_transaction;
  String? min_selection;
  String? max_selection;
  String? start_date;
  String? end_date;
  String? multiple_selection;
  String? triggering;
  String? priority;
  String? uom;
  String? item_no;

  ItemModifierHeader.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.code = json["code"];
    this.description = json["description"];
    this.prompt = json["prompt"];
    this.display_option = json["display_option"];
    this.once_per_transaction = json["once_per_transaction"];
    this.min_selection = json["min_selection"];
    this.max_selection = json["max_selection"];
    this.start_date = json["start_date"];
    this.end_date = json["end_date"];
    this.multiple_selection = json["multiple_selection"];
    this.triggering = json["triggering"];
    this.priority = json["priority"];
    this.uom = json["uom"];
    this.item_no = json["item_no"];
  }

  ItemModifierHeader.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.code = json["code"];
    this.description = json["description"];
    this.prompt = json["prompt"];
    this.display_option = json["display_option"];
    this.once_per_transaction = json["once_per_transaction"];
    this.min_selection = json["min_selection"];
    this.max_selection = json["max_selection"];
    this.start_date = json["start_date"];
    this.end_date = json["end_date"];
    this.multiple_selection = json["multiple_selection"];
    this.triggering = json["triggering"];
    this.priority = json["priority"];
    this.uom = json["uom"];
    this.item_no = json["item_no"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "code": code,
      'description': description,
      "prompt": prompt,
      "display_option": display_option,
      "once_per_transaction": once_per_transaction,
      "min_selection": min_selection,
      "max_selection": max_selection,
      "start_date": start_date,
      "end_date": end_date,
      "multiple_selection": multiple_selection,
      "triggering": triggering,
      "priority": priority,
      "uom": uom,
      "item_no": item_no,
    };
  }
}
