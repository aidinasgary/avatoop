/*
import 'info_api.dart';
import 'item_api.dart';

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
*/