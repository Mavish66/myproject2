class CouponHeaders {
  int? id;
  String? created_at;
  String? updated_at;
  String? code;
  String? coupon_issuer;
  String? coupon_reference_no;
  String? description;
  String? description_2;
  String? price_group;
  String? discount_type;
  String? validation_period_id;
  String? status;
  String? type;
  String? handling;
  String? no_of_items_to_trigger;
  String? apply_to_no_of_items;
  String? affects;
  String? no_series;
  String? multiply_value;
  String? multiply_value_period_id;
  String? issue_at_pos;
  String? loyalty_scheme;
  String? discount__of_total;
  String? rounding_method;
  String? extra_print_setup;
  String? barcode_mask;
  String? member_type;
  String? member_value;
  String? first_valid_date_formula;
  String? last_valid_date_formula;
  String? barcode_element_1;
  String? barcode_element_2;
  String? barcode_element_3;
  String? barcode_element_4;
  String? barcode_element_5;
  String? barcode_element_6;
  String? barcode_element_7;
  String? barcode_element_8;
  String? calculation_type;
  String? value;
  String? entry_validation;
  String? posting_type;
  String? posting_account;
  String? buyer_id;
  String? buyer_group_code;
  String? offline_process;
  String? coupon_id_method;
  String? max_per_member;
  String? minimum_trans_amount;
  String? maximum_trans_amount;

  CouponHeaders.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.code = json["code"];
    this.coupon_issuer = json["coupon_issuer"];
    this.coupon_reference_no = json["coupon_reference_no"];
    this.description = json["description"];
    this.description_2 = json["description_2"];
    this.price_group = json["price_group"];
    this.discount_type = json["discount_type"];
    this.validation_period_id = json["validation_period_id"];
    this.status = json["status"];
    this.type = json["type"];
    this.handling = json["handling"];
    this.no_of_items_to_trigger = json["no_of_items_to_trigger"];
    this.apply_to_no_of_items = json["apply_to_no_of_items"];
    this.affects = json["affects"];
    this.no_series = json["no_series"];
    this.multiply_value = json["multiply_value"];
    this.multiply_value_period_id = json["multiply_value_period_id"];
    this.issue_at_pos = json["issue_at_pos"];
    this.loyalty_scheme = json["loyalty_scheme"];
    this.discount__of_total = json["discount__of_total"];
    this.rounding_method = json["rounding_method"];
    this.extra_print_setup = json["extra_print_setup"];
    this.barcode_mask = json["barcode_mask"];
    this.member_type = json["member_type"];
    this.member_value = json["member_value"];
    this.first_valid_date_formula = json["first_valid_date_formula"];
    this.last_valid_date_formula = json["last_valid_date_formula"];
    this.barcode_element_1 = json["barcode_element_1"];
    this.barcode_element_2 = json["barcode_element_2"];
    this.barcode_element_3 = json["barcode_element_3"];
    this.barcode_element_4 = json["barcode_element_4"];
    this.barcode_element_5 = json["barcode_element_5"];
    this.barcode_element_6 = json["barcode_element_6"];
    this.barcode_element_7 = json["barcode_element_7"];
    this.barcode_element_8 = json["barcode_element_8"];
    this.calculation_type = json["calculation_type"];
    this.value = json["value"];
    this.entry_validation = json["entry_validation"];
    this.posting_type = json["posting_type"];
    this.posting_account = json["posting_account"];
    this.buyer_id = json["buyer_id"];
    this.buyer_group_code = json["buyer_group_code"];
    this.offline_process = json["offline_process"];
    this.coupon_id_method = json["coupon_id_method"];
    this.max_per_member = json["max_per_member"];
    this.minimum_trans_amount = json["minimum_trans_amount"];
    this.minimum_trans_amount = json["minimum_trans_amount"];
  }

  CouponHeaders.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.updated_at = json["updated_at"];
    this.code = json["code"];
    this.coupon_issuer = json["coupon_issuer"];
    this.coupon_reference_no = json["coupon_reference_no"];
    this.description = json["description"];
    this.description_2 = json["description_2"];
    this.price_group = json["price_group"];
    this.discount_type = json["discount_type"];
    this.validation_period_id = json["validation_period_id"];
    this.status = json["status"];
    this.type = json["type"];
    this.handling = json["handling"];
    this.no_of_items_to_trigger = json["no_of_items_to_trigger"];
    this.apply_to_no_of_items = json["apply_to_no_of_items"];
    this.affects = json["affects"];
    this.no_series = json["no_series"];
    this.multiply_value = json["multiply_value"];
    this.multiply_value_period_id = json["multiply_value_period_id"];
    this.issue_at_pos = json["issue_at_pos"];
    this.loyalty_scheme = json["loyalty_scheme"];
    this.discount__of_total = json["discount__of_total"];
    this.rounding_method = json["rounding_method"];
    this.extra_print_setup = json["extra_print_setup"];
    this.barcode_mask = json["barcode_mask"];
    this.member_type = json["member_type"];
    this.member_value = json["member_value"];
    this.first_valid_date_formula = json["first_valid_date_formula"];
    this.last_valid_date_formula = json["last_valid_date_formula"];
    this.barcode_element_1 = json["barcode_element_1"];
    this.barcode_element_2 = json["barcode_element_2"];
    this.barcode_element_3 = json["barcode_element_3"];
    this.barcode_element_4 = json["barcode_element_4"];
    this.barcode_element_5 = json["barcode_element_5"];
    this.barcode_element_6 = json["barcode_element_6"];
    this.barcode_element_7 = json["barcode_element_7"];
    this.barcode_element_8 = json["barcode_element_8"];
    this.calculation_type = json["calculation_type"];
    this.value = json["value"];
    this.entry_validation = json["entry_validation"];
    this.posting_type = json["posting_type"];
    this.posting_account = json["posting_account"];
    this.buyer_id = json["buyer_id"];
    this.buyer_group_code = json["buyer_group_code"];
    this.offline_process = json["offline_process"];
    this.coupon_id_method = json["coupon_id_method"];
    this.max_per_member = json["max_per_member"];
    this.minimum_trans_amount = json["minimum_trans_amount"];
    this.minimum_trans_amount = json["minimum_trans_amount"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "code": code,
      "coupon_issuer": coupon_issuer,
      "coupon_reference_no": coupon_reference_no,
      "description": description,
      "description_2": description_2,
      "price_group": price_group,
      "discount_type": discount_type,
      "validation_period_id": validation_period_id,
      "status": status,
      "type": type,
      "handling": handling,
      "no_of_items_to_trigger": no_of_items_to_trigger,
      "apply_to_no_of_items": apply_to_no_of_items,
      "affects": affects,
      "no_series": no_series,
      "multiply_value": multiply_value,
      "multiply_value_period_id": multiply_value_period_id,
      "issue_at_pos": issue_at_pos,
      "loyalty_scheme": loyalty_scheme,
      "discount__of_total": discount__of_total,
      "rounding_method": rounding_method,
      "extra_print_setup": extra_print_setup,
      "barcode_mask": barcode_mask,
      "member_type": member_type,
      "member_value": member_value,
      "first_valid_date_formula": first_valid_date_formula,
      "last_valid_date_formula": last_valid_date_formula,
      "barcode_element_1": barcode_element_1,
      "barcode_element_2": barcode_element_2,
      "barcode_element_3": barcode_element_3,
      "barcode_element_4": barcode_element_4,
      "barcode_element_5": barcode_element_5,
      "barcode_element_6": barcode_element_6,
      "barcode_element_7": barcode_element_7,
      "barcode_element_8": barcode_element_8,
      "calculation_type": calculation_type,
      "value": value,
      "entry_validation": entry_validation,
      "posting_type": posting_type,
      "posting_account": posting_account,
      "buyer_id": buyer_id,
      "buyer_group_code": buyer_group_code,
      "offline_process": offline_process,
      "coupon_id_method": coupon_id_method,
      "max_per_member": max_per_member,
      "minimum_trans_amount": minimum_trans_amount,
      "maximum_trans_amount": maximum_trans_amount,
    };
  }
}
