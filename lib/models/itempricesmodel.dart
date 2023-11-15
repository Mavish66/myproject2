class ItemPrices {
  int? id;
  String? created_at;
  String? updated_at;
  String? item_no;
  String? store_code;
  String? unit_price;
  String? unit_price_incl_vat;
  String? start_date;
  String? end_date;
  String? uom;
  String? vat_code;
  String? location_code;
  String? variant_code;
  String? currency_code;
  String? start_time;
  String? end_time;
  String? item_price;

  ItemPrices.fromJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.item_no = json["item_no"];
    this.store_code = json["store_code"];
    this.unit_price = json["unit_price"];
    this.unit_price_incl_vat = json["unit_price_incl_vat"];
    this.start_date = json["start_date"];
    this.end_date = json["end_date"];
    this.uom = json["uom"];
    this.vat_code = json["vat_code"];
    this.location_code = json["location_code"];
    this.variant_code = json["variant_code"];
    this.currency_code = json["currency_code"];
    this.start_time = json["start_time"];
    this.end_time = json["end_time"];
    this.item_price = json["item_price"];
  }

  ItemPrices.fromDBJson(json) {
    this.id = json["id"];
    this.created_at = json["created_at"];
    this.item_no = json["item_no"];
    this.store_code = json["store_code"];
    this.unit_price = json["unit_price"];
    this.unit_price_incl_vat = json["unit_price_incl_vat"];
    this.start_date = json["start_date"];
    this.end_date = json["end_date"];
    this.uom = json["uom"];
    this.vat_code = json["vat_code"];
    this.location_code = json["location_code"];
    this.variant_code = json["variant_code"];
    this.currency_code = json["currency_code"];
    this.start_time = json["start_time"];
    this.end_time = json["end_time"];
    this.item_price = json["item_price"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "created_at": created_at,
      "updated_at": updated_at,
      "item_no": item_no,
      "store_code": store_code,
      "unit_price": unit_price,
      "unit_price_incl_vat": unit_price_incl_vat,
      "start_date": start_date,
      "end_date": end_date,
      "uom": uom,
      "vat_code": vat_code,
      "location_code": location_code,
      "variant_code": variant_code,
      "start_time": start_time,
      "end_time": end_time,
      "item_price": item_price,
    };
  }
}
