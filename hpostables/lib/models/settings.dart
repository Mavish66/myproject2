class Settings {
  int? id;
  String? created_at;
  String? updated_at;
  String? user;
  String? store;
  String? setup;
  String? is_active;
  String? tenant;

  Settings.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.user = json["user"];
    this.store = json["store"];
    this.setup = json["setup"];
    this.is_active = json["is_active"];
    this.tenant = json["tenant"];
  }
  Settings.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.user = json["user"];
    this.store = json["store"];
    this.setup = json["setup"];
    this.is_active = json["is_active"];
    this.tenant = json["tenant"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "user": user,
      "store": store,
      "setup": setup,
      "is_active": is_active,
      "tenant": tenant,
    };
  }
}
