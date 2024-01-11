/// id : 1
/// partNo : 390000
/// image : "https://www.techswivel.com/pictures/pictures.jpg"
/// description : "TK Box inkl Akku"

class EmptiesList {
  EmptiesList({
    num? id,
    num? partNo,
    String? image,
    String? description,
  }) {
    _id = id;
    _partNo = partNo;
    _image = image;
    _description = description;
  }

  EmptiesList.fromJson(dynamic json) {
    _id = json['id'];
    _partNo = json['partNo'];
    _image = json['image'];
    _description = json['description'];
  }

  num? _id;
  num? _partNo;
  String? _image;
  String? _description;

  EmptiesList copyWith({
    num? id,
    num? partNo,
    String? image,
    String? description,
  }) =>
      EmptiesList(
        id: id ?? _id,
        partNo: partNo ?? _partNo,
        image: image ?? _image,
        description: description ?? _description,
      );

  num? get id => _id;

  num? get partNo => _partNo;

  String? get image => _image;

  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['partNo'] = _partNo;
    map['image'] = _image;
    map['description'] = _description;
    return map;
  }
}
