class TableConfigurators {

  int? id;
  String? created_at;
  String? updated_at;
  String? enabled;
  String? field_no;
  String? field_name;
  String? caption;
  String? data_type;
  String? length;
  String? description;
  String? field_class;
  String? option_string;
  String? form_id;
  String? page_id;
  String? store_id;
  String? user_id;
  String? ui_columns;
  String? priority;
  String? group_id;
  String? group_label;
  String? mandatory;
  String? option_type;
  String? option_url;
  String? option_key;
  String? option_label;
  String? form_enabled;

  TableConfigurators.fromJson(json) {
    this.id = json[""];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.enabled = json["enabled"];
    this.field_no = json["field_no"];
    this.field_name = json["field_name"];
    this.caption = json["caption"];
    this.data_type = json["data_type"];
    this.length = json["length"];
    this.description = json["description"];
    this.field_class = json["field_class"];
    this.option_string = json["option_string"];
    this.form_id = json["form_id"];
    this.page_id = json["page_id"];
    this.store_id = json["store_id"];
    this.user_id = json["user_id"];
    this.ui_columns = json["ui_columns"];
    this.priority = json["priority"];
    this.group_id = json["group_id"];
    this.group_label = json["group_label"];
    this.mandatory = json["mandatory"];
    this.option_type = json["option_type"] ?? "NULL";
    this.option_url = json["option_url"] ?? "NULL";
    this.option_key = json["option_key"] ?? "NULL";
    this.option_label = json["option_label"] ?? "NULL";
    this.form_enabled = json["form_enabled"];
  }

  TableConfigurators.fromDBJson(json) {
    this.id = json[""];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.enabled = json["enabled"];
    this.field_no = json["field_no"];
    this.field_name = json["field_name"];
    this.caption = json["caption"];
    this.data_type = json["data_type"];
    this.length = json["length"];
    this.description = json["description"];
    this.field_class = json["field_class"];
    this.option_string = json["option_string"];
    this.form_id = json["form_id"];
    this.page_id = json["page_id"];
    this.store_id = json["store_id"];
    this.user_id = json["user_id"];
    this.ui_columns = json["ui_columns"];
    this.priority = json["priority"];
    this.group_id = json["group_id"];
    this.group_label = json["group_label"];
    this.mandatory = json["mandatory"];
    this.option_type = json["option_type"] ?? "NULL";
    this.option_url = json["option_url"] ?? "NULL";
    this.option_key = json["option_key"] ?? "NULL";
    this.option_label = json["option_label"] ?? "NULL";
    this.form_enabled = json["form_enabled"];
  }

  Map<String, dynamic> toMap(){
    return{
      "id":id,
      "created_at":created_at,
      "updated_at":updated_at,
      "enabled":enabled,
      "field_no":field_no,
      "field_name":field_name,
      "caption":caption,
      "data_type":data_type,
      "length":length,
      "description":description,
      "field_class":field_class,
      "option_string":option_string,
      "form_id":form_id,
      "page_id":page_id,
      "store_id":store_id,
      "user_id":user_id,
      "ui_columns":ui_columns,
      "priority":priority,
      "group_id":group_id,
      "group_label":group_label,
      "mandatory":mandatory,
      "option_type":option_type,
      "option_url":option_url,
      "option_key":option_key,
      "option_label":option_label,
      "form_enabled":form_enabled,
    };
  }




}
