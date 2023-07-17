import 'header_api.dart';

class Request {
  Request({
    String? method,
    List<Header>? header,
    String? url,
  }) {
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
  Request copyWith({
    String? method,
    List<Header>? header,
    String? url,
  }) =>
      Request(
        method: method ?? _method,
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
