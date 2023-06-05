/*
class AvatoopJcon {
  AvatoopJcon({
      Info? info, 
      List<Item>? item,}){
    _info = info;
    _item = item;
}

  AvatoopJcon.fromJson(dynamic json) {
    _info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['item'] != null) {
      _item = [];
      json['item'].forEach((v) {
        _item?.add(Item.fromJson(v));
      });
    }
  }
  Info? _info;
  List<Item>? _item;
AvatoopJcon copyWith({  Info? info,
  List<Item>? item,
}) => AvatoopJcon(  info: info ?? _info,
  item: item ?? _item,
);
  Info? get info => _info;
  List<Item>? get item => _item;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_info != null) {
      map['info'] = _info?.toJson();
    }
    if (_item != null) {
      map['item'] = _item?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Item {
  Item({
      String? name, 
      List<Item>? item,}){
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
  Item({
      String? name, 
      Request? request, 
      List<dynamic>? response,}){
    _name = name;
    _request = request;
    _response = response;
}

  Item.fromJson(dynamic json) {
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

class Request {
  Request({
      String? method, 
      List<Header>? header, 
      String? url,}){
    _method = method;
    _header = header;
    _url = url;
}

  Request.fromJson(dynamic json) {
    _method = json['method'];
    if (json['header'] != null) {
      _header = [];
      json['header'].forEach((v) {
        _header?.add(Header.fromJson(v));
      });
    }
    _url = json['url'];
  }
  String? _method;
  List<Header>? _header;
  String? _url;
Request copyWith({  String? method,
  List<Header>? header,
  String? url,
}) => Request(  method: method ?? _method,
  header: header ?? _header,
  url: url ?? _url,
);
  String? get method => _method;
  List<Header>? get header => _header;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['method'] = _method;
    if (_header != null) {
      map['header'] = _header?.map((v) => v.toJson()).toList();
    }
    map['url'] = _url;
    return map;
  }

}

class Header {
  Header({
      String? key, 
      String? value, 
      String? type,}){
    _key = key;
    _value = value;
    _type = type;
}

  Header.fromJson(dynamic json) {
    _key = json['key'];
    _value = json['value'];
    _type = json['type'];
  }
  String? _key;
  String? _value;
  String? _type;
Header copyWith({  String? key,
  String? value,
  String? type,
}) => Header(  key: key ?? _key,
  value: value ?? _value,
  type: type ?? _type,
);
  String? get key => _key;
  String? get value => _value;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = _key;
    map['value'] = _value;
    map['type'] = _type;
    return map;
  }

}

class Info {
  Info({
      String? postmanId, 
      String? name, 
      String? schema, 
      String? exporterId,}){
    _postmanId = postmanId;
    _name = name;
    _schema = schema;
    _exporterId = exporterId;
}

  Info.fromJson(dynamic json) {
    _postmanId = json['_postman_id'];
    _name = json['name'];
    _schema = json['schema'];
    _exporterId = json['_exporter_id'];
  }
  String? _postmanId;
  String? _name;
  String? _schema;
  String? _exporterId;
Info copyWith({  String? postmanId,
  String? name,
  String? schema,
  String? exporterId,
}) => Info(  postmanId: postmanId ?? _postmanId,
  name: name ?? _name,
  schema: schema ?? _schema,
  exporterId: exporterId ?? _exporterId,
);
  String? get postmanId => _postmanId;
  String? get name => _name;
  String? get schema => _schema;
  String? get exporterId => _exporterId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_postman_id'] = _postmanId;
    map['name'] = _name;
    map['schema'] = _schema;
    map['_exporter_id'] = _exporterId;
    return map;
  }

}*/