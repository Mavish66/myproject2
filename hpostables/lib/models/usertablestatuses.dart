class UserTableStatues {
  int? id;
  String? created_at;
  String? updated_at;
  String? userid;
  String? status;
  String? nextstatus;
  String? isactive;
  String? createdby;

  UserTableStatues.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.userid = json["userid"];
    this.status = json["status"];
    this.nextstatus = json["nextstatus"];
    this.isactive = json["isactive"];
    this.createdby = json["createdby"];
  }

  UserTableStatues.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.userid = json["userid"];
    this.status = json["status"];
    this.nextstatus = json["nextstatus"];
    this.isactive = json["isactive"];
    this.createdby = json["createdby"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "userid": userid,
      "status": status,
      "nextstatus": nextstatus,
      "isactive": isactive,
      "createdby": createdby,
    };
  }
}
