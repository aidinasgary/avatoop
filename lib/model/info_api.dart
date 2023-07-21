class Info {
  Info({
    String? postmanId,
    String? name,
    String? schema,
    String? exporterId,
  }) {
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
  Info copyWith({
    String? postmanId,
    String? name,
    String? schema,
    String? exporterId,
  }) =>
      Info(
        postmanId: postmanId ?? _postmanId,
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
}
