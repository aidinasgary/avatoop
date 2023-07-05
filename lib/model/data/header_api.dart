class Header {
  Header({
    String? key,
    String? value,
    String? type,
  }) {
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
  Header copyWith({
    String? key,
    String? value,
    String? type,
  }) =>
      Header(
        key: key ?? _key,
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
