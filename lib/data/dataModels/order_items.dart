/// itemId : 2
/// itemName : "Cold Drink"
/// itemTotal : 15
/// itemAvatar : "image.png"
/// isScannable : true
/// boxIds : [123,123,123]

class OrderItems {
  OrderItems({
    num? itemId,
    String? itemName,
    num? itemTotal,
    String? itemAvatar,
    bool? isScannable,
    List<num>? boxIds,
  }) {
    _itemId = itemId;
    _itemName = itemName;
    _itemTotal = itemTotal;
    _itemAvatar = itemAvatar;
    _isScannable = isScannable;
    _boxIds = boxIds;
  }

  OrderItems.fromJson(dynamic json) {
    _itemId = json['itemId'];
    _itemName = json['itemName'];
    _itemTotal = json['itemTotal'];
    _itemAvatar = json['itemAvatar'];
    _isScannable = json['isScannable'];
    _boxIds = json['boxIds'] != null ? json['boxIds'].cast<num>() : [];
  }

  num? _itemId;
  String? _itemName;
  num? _itemTotal;
  String? _itemAvatar;
  bool? _isScannable;
  List<num>? _boxIds;

  OrderItems copyWith({
    num? itemId,
    String? itemName,
    num? itemTotal,
    String? itemAvatar,
    bool? isScannable,
    List<num>? boxIds,
  }) =>
      OrderItems(
        itemId: itemId ?? _itemId,
        itemName: itemName ?? _itemName,
        itemTotal: itemTotal ?? _itemTotal,
        itemAvatar: itemAvatar ?? _itemAvatar,
        isScannable: isScannable ?? _isScannable,
        boxIds: boxIds ?? _boxIds,
      );

  num? get itemId => _itemId;

  String? get itemName => _itemName;

  num? get itemTotal => _itemTotal;

  String? get itemAvatar => _itemAvatar;

  bool? get isScannable => _isScannable;

  List<num>? get boxIds => _boxIds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['itemId'] = _itemId;
    map['itemName'] = _itemName;
    map['itemTotal'] = _itemTotal;
    map['itemAvatar'] = _itemAvatar;
    map['isScannable'] = _isScannable;
    map['boxIds'] = _boxIds;
    return map;
  }
}
