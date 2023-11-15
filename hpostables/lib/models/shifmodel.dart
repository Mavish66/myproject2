class Shift {
  int? id;
  String? created_at;
  String? updated_at;
  String? shift_id;
  String? label_id;

  Shift.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.shift_id = json["shift_id"];
    this.label_id = json["label_id"];
  }

  Shift.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.shift_id = json["shift_id"];
    this.label_id = json["label_id"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "shift_id": shift_id,
      "label_id": label_id,
    };
  }
}
