import 'dart:convert';

class Discounttypes {
  int? id;
  String? created_at;
  String? updated_at;
  String? label;
  String? type;
  String? label_id;
  String? description;

  Discounttypes.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["updated_at"];
    this.updated_at = json["label"];
    this.type = json["type"];
    this.label_id = json["label_id"];
    this.description = json["description"];
  }

  Discounttypes.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["updated_at"];
    this.updated_at = json["label"];
    this.type = json["type"];
    this.label_id = json["label_id"];
    this.description = json["description"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "type": type,
      "label_id": label_id,
      "description": description,
    };
  }
}
