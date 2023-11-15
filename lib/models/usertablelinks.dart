class UserTableLinks {
  int? id;
  String? created_at;
  String? updated_at;
  String? userid;
  String? table_id;
  String? active_status;

  UserTableLinks.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.userid = json["userid"];
    this.active_status = json["active_status"];
  }

  UserTableLinks.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.userid = json["userid"];
    this.active_status = json["active_status"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "userid": userid,
      "active_status": active_status,
    };
  }
}
