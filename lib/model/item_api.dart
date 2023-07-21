/*
import 'package:get/get_connect/http/src/request/request.dart';


class Item {
  Item({
      String? name, 
      List<Item>? item, Request? request, List? response,}){
    _name = name;
    _item = item;
}

  Item.fromJson(dynamic json) {
    _name = json['name'];
    if (json['item'] != null) {
      _item = [];
      json['item'].forEach((v) {
        _item?.add(Item.fromJson(v));
      });
    }
  }
  String? _name;
  List<Item>? _item;
Item copyWith({  String? name,
  List<Item>? item,
}) => Item(  name: name ?? _name,
  item: item ?? _item,
);
  String? get name => _name;
  List<Item>? get item => _item;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    if (_item != null) {
      map['item'] = _item?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class item {
item({
      String? name, 
      Request? request, 
      List<dynamic>? response,}){
    _name = name;
    _request = request;
    _response = response;
}

  item.fromJson(dynamic json) {
    _name = json['name'];
    _request = json['request'] != null ? Request.fromJson(json['request']) : null;
    if (json['response'] != null) {
      _response = [];
      json['response'].forEach((v) {
        _response?.add(Dynamic.fromJson(v));
      });
    }
  }
  String? _name;
  Request? _request;
  List<dynamic>? _response;
Item copyWith({  String? name,
  Request? request,
  List<dynamic>? response,
}) => Item(  name: name ?? _name,
  request: request ?? _request,
  response: response ?? _response,
);
  String? get name => _name;
  Request? get request => _request;
  List<dynamic>? get response => _response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    if (_request != null) {
      map['request'] = _request?.toJson();
    }
    if (_response != null) {
      map['response'] = _response?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Dynamic {
}
*/