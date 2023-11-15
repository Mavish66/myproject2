import 'dart:convert';

import 'package:hpostables/models/addonsmodel.dart';
import 'package:hpostables/models/backofficemodel.dart';
import 'package:hpostables/models/costingmethods.dart';
import 'package:hpostables/models/discounttypes.dart';
import 'package:hpostables/models/itemmodifierdetail.dart';
import 'package:hpostables/models/kds_user_links.dart';
import 'package:hpostables/models/menuhierarchymodel.dart';
import 'package:hpostables/models/numberseriesmodel.dart';
import 'package:hpostables/models/portionweightsmodel.dart';
import 'package:hpostables/models/sectionsmodel.dart';
import 'package:hpostables/models/settings.dart';
import 'package:hpostables/models/shifmodel.dart';
import 'package:hpostables/models/usertablelinks.dart';
import 'package:http/http.dart' as http;

import '../models/couponentries.dart';
import '../models/couponheaders.dart';
import '../models/divisionmasters.dart';
import '../models/guimenuesmodel.dart';
import '../models/itemmodifierheader.dart';
import '../models/itempricesmodel.dart';
import '../models/kds_masters.dart';
import '../models/portioncosthierarchies.dart';
import '../models/productgroupmasters.dart';
import '../models/producthierarchylinks.dart';
import '../models/reasonmasters.dart';
import '../models/recipesmodel.dart';
import '../models/tableconfigurators.dart';
import '../models/tableformlinks.dart';
import '../models/tablesetupstatuses.dart';
import '../models/usersmodel.dart';
import '../models/usertablestatuses.dart';

class RestAadpter {
  Future<List<Discounttypes>> getDiscounttypes() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/discounttypes";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Discounttypes.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<TablesetupStatuses>> getTablesetupstatus() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/tssc";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res =
            jsonList.map((json) => TablesetupStatuses.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<ReasonMasters>> getReasonMasters() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/reason_masters/rt/2";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => ReasonMasters.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<UserTableLinks>> getUserTablelinks() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/utl";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res =
            jsonList.map((json) => UserTableLinks.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<Settings>> getSettings() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/getsettingsbystore/DWTC001";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Settings.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<Shift>> getShift() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/shift";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Shift.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<Sections>> getSections() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/sections";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Sections.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<Menuhierarchies>> getMenuhirarchies() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/menuhierarchies";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Menuhierarchies.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }



  Future<List<ItemPrices>> getItemPrices() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/item_prices";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => ItemPrices.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<UserTableStatues>> getUserTableStatues() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/usertablestatuses";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => UserTableStatues.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<Recipes>> getRecipes() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/recipes";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Recipes.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<KDSMasters>> getKDSMasters() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/kds_master";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => KDSMasters.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<KDSUserLinks>> getKDSUserLinks() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/kds_user_links";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => KDSUserLinks.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<ItemModifierDetail>> getItemModifierDetail() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/item_modifier_detail";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => ItemModifierDetail.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }



  Future<List<Addons>> getAddons() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/addons";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Addons.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }




  Future<List<BackOffice>> getBackOffice() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/backofficetables";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => BackOffice.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<CostingMethods>> getCostingMethods() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/costing_methods";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => CostingMethods.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<NumberSeries>> getNumberSeries() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/number_series";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => NumberSeries.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }



  Future<List<PortionWeights>> getPortionWeights() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/portion_weights";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => PortionWeights.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }



  Future<List<PortionCostHierarchies>> getPortionCostHierarchies() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/portion_cost_hierarchies";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => PortionCostHierarchies.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<GuiMenues>> getGuiMenues() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/gui_menuses";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => GuiMenues.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<ProductHierarchyLinks>> getProductHierarchyLinks() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/product_hierarchy_links";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => ProductHierarchyLinks.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<DivisionMasters>> getDivisionMasters() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/division_masters";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => DivisionMasters.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<TableFormLinks>> getTableFormLinks() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/tableformlinks";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => TableFormLinks.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<Users>> getUsers() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/tableformlinks";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => Users.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<TableConfigurators>> getTableConfigurators() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/table_configurators";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => TableConfigurators.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<ProductGroupMasters>> getProductGroupMasters() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/product_group_masters";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => ProductGroupMasters.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }



  Future<List<CouponHeaders>> getCouponHeaders() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/coupon_headers";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => CouponHeaders.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }

  Future<List<ItemModifierHeader>> getItemModifierHeader() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/item_modifier_header";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => ItemModifierHeader.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }


  Future<List<CouponEntries>> getCouponEntries() async {
    String url =
        "http://d365hposvmv1.uaenorth.cloudapp.azure.com:4003/HPOSServerUAT/public/api/coupon_entries";

    try {
      var response = await http.get(Uri.parse(url));
      var result = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var jsonList = result as List;
        var res = jsonList.map((json) => CouponEntries.fromJson(json)).toList();

        print(res);
        print(res.length);
        return res;
      } else {
        return [];
      }
    } catch (e) {
      print("Unable to fetch data ");
      return [];
    }
  }



}
