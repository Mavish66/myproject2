import 'dart:core';

class TablesetupStatuses {
  int? id;
  String? created_at;
  String? updated_at;
  String? tableid;
  String? status;
  String? notes;
  String? status_icon;
  String? transaction_ref_id;
  String? user_id;
  String? previous_status;
  String? guest_count;

  TablesetupStatuses.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.tableid = json["tableid"];
    this.status = json["status"];
    this.notes = json["notes"];
    this.status_icon = json["status_icon"];
    this.transaction_ref_id = json["transaction_ref_id"];
    this.user_id = json["user_id"];
    this.previous_status = json["previous_status"];
    this.guest_count = json["guest_count"];
  }

  TablesetupStatuses.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.tableid = json["tableid"];
    this.status = json["status"];
    this.notes = json["notes"];
    this.status_icon = json["status_icon"];
    this.transaction_ref_id = json["transaction_ref_id"];
    this.user_id = json["user_id"];
    this.previous_status = json["previous_status"];
    this.guest_count = json["guest_count"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "tableid": tableid,
      "status": status,
      "notes": notes,
      "status_icon": status_icon,
      "transaction_ref_id": transaction_ref_id,
      "user_id": user_id,
      "previous_status": previous_status,
      "guest_count": guest_count,
    };
  }
}
