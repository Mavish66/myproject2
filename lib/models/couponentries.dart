class CouponEntries {
  int? id;
  String? created_at;
  String? updated_at;
  String? store_no;
  String? pos_terminal_no;
  String? transaction_no;
  String? coupon_code;
  String? line_no;
  String? coupon_reference_no;
  String? coupon_no;
  String? barcode;
  String? issued_by_store;
  String? issued_by_pos_terminal;
  String? issue_date;
  String? issued_by_user;
  String? reserved_by_pos_terminal_no;
  String? date_reserved_on_pos;
  String? first_valid_date;
  String? last_valid_date;
  String? status;
  String? sequence_no;
  String? closed_by_store;
  String? closed_by_terminal;
  String? closed_date;
  String? closed_by_user;
  String? closed_by_entry_no;
  String? discount_type;
  String? value;
  String? value_type;
  String? g_l_status;
  String? g_l_amount;
  String? coupon_function;
  String? fbp_ledger_entry_no;
  String? member_account_no;

  CouponEntries.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.store_no = json["store_no"];
    this.pos_terminal_no = json["pos_terminal_no"];
    this.transaction_no = json["transaction_no"];
    this.coupon_code = json["coupon_code"];
    this.line_no = json["line_no"];
    this.coupon_reference_no = json["coupon_reference_no"];
    this.coupon_no = json["coupon_no"];
    this.barcode = json["barcode"];
    this.issued_by_store = json["issued_by_store"];
    this.issued_by_pos_terminal = json["issued_by_pos_terminal"];
    this.issue_date = json["issue_date"];
    this.issued_by_user = json["issued_by_user"];
    this.reserved_by_pos_terminal_no = json["reserved_by_pos_terminal_no"];
    this.date_reserved_on_pos = json["date_reserved_on_pos"];
    this.first_valid_date = json["first_valid_date"];
    this.last_valid_date = json["last_valid_date"];
    this.status = json["status"];
    this.sequence_no = json["sequence_no"];
    this.closed_by_store = json["closed_by_store"];
    this.closed_by_terminal = json["closed_by_terminal"];
    this.closed_date = json["closed_date"];
    this.closed_by_user = json["closed_by_user"];
    this.closed_by_entry_no = json["closed_by_entry_no"];
    this.discount_type = json["discount_type"];
    this.value = json["value"];
    this.value_type = json["value_type"];
    this.g_l_status = json["g_l_status"];
    this.g_l_amount = json["g_l_amount"];
    this.coupon_function = json["coupon_function"];
    this.fbp_ledger_entry_no = json["fbp_ledger_entry_no"];
    this.member_account_no = json["member_account_no"];
  }

  CouponEntries.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.store_no = json["store_no"];
    this.pos_terminal_no = json["pos_terminal_no"];
    this.transaction_no = json["transaction_no"];
    this.coupon_code = json["coupon_code"];
    this.line_no = json["line_no"];
    this.coupon_reference_no = json["coupon_reference_no"];
    this.coupon_no = json["coupon_no"];
    this.barcode = json["barcode"];
    this.issued_by_store = json["issued_by_store"];
    this.issued_by_pos_terminal = json["issued_by_pos_terminal"];
    this.issue_date = json["issue_date"];
    this.issued_by_user = json["issued_by_user"];
    this.reserved_by_pos_terminal_no = json["reserved_by_pos_terminal_no"];
    this.date_reserved_on_pos = json["date_reserved_on_pos"];
    this.first_valid_date = json["first_valid_date"];
    this.last_valid_date = json["last_valid_date"];
    this.status = json["status"];
    this.sequence_no = json["sequence_no"];
    this.closed_by_store = json["closed_by_store"];
    this.closed_by_terminal = json["closed_by_terminal"];
    this.closed_date = json["closed_date"];
    this.closed_by_user = json["closed_by_user"];
    this.closed_by_entry_no = json["closed_by_entry_no"];
    this.discount_type = json["discount_type"];
    this.value = json["value"];
    this.value_type = json["value_type"];
    this.g_l_status = json["g_l_status"];
    this.g_l_amount = json["g_l_amount"];
    this.coupon_function = json["coupon_function"];
    this.fbp_ledger_entry_no = json["fbp_ledger_entry_no"];
    this.member_account_no = json["member_account_no"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "store_no": store_no,
      "pos_terminal_no": pos_terminal_no,
      "transaction_no": transaction_no,
      "coupon_code": coupon_code,
      "line_no": line_no,
      "coupon_reference_no": coupon_reference_no,
      "coupon_no": coupon_no,
      "barcode": barcode,
      "issued_by_store": issued_by_store,
      "issued_by_pos_terminal": issued_by_pos_terminal,
      "issue_date": issue_date,
      "issued_by_user": issued_by_user,
      "reserved_by_pos_terminal_no": reserved_by_pos_terminal_no,
      "date_reserved_on_pos": date_reserved_on_pos,
      "first_valid_date": first_valid_date,
      "last_valid_date": last_valid_date,
      "status": status,
      "sequence_no": sequence_no,
      "closed_by_store": closed_by_store,
      "closed_by_terminal": closed_by_terminal,
      "closed_date": closed_date,
      "closed_by_user": closed_by_user,
      "closed_by_entry_no": closed_by_entry_no,
      "discount_type": discount_type,
      "value": value,
      "value_type": value_type,
      "g_l_status": g_l_status,
      "g_l_amount": g_l_amount,
      "coupon_function": coupon_function,
      "fbp_ledger_entry_no": fbp_ledger_entry_no,
      "member_account_no": member_account_no,
    };
  }
}
