class GuiMenues {
  int? id;
  String? created_at;
  String? updated_at;
  String? gui_menu_label;
  String? gui_menu_code;
  String? icon;
  String? color;
  String? badge_color;
  String? parent_id;
  String? is_active;
  String? form_id;

  GuiMenues.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.gui_menu_label = json["gui_menu_label"];
    this.gui_menu_code = json["gui_menu_code"];
    this.icon = json["icon"];
    this.color = json["color"];
    this.badge_color = json["badge_color"];
    this.parent_id = json["parent_id"];
    this.is_active = json["is_active"];
    this.form_id = json["form_id"];
  }

  GuiMenues.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.gui_menu_label = json["gui_menu_label"];
    this.gui_menu_code = json["gui_menu_code"];
    this.icon = json["icon"];
    this.color = json["color"];
    this.badge_color = json["badge_color"];
    this.parent_id = json["parent_id"];
    this.is_active = json["is_active"];
    this.form_id = json["form_id"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "gui_menu_label": gui_menu_label,
      "gui_menu_code": gui_menu_code,
      "icon": icon,
      "color": color,
      "badge_color": badge_color,
      "parent_id": parent_id,
      "is_active": is_active,
      "form_id": form_id,
    };
  }
}
