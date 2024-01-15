import 'data.dart';

/// status : true
/// data : {"authResponse":{"firstName":"Musaddiq","lastName":"Ansar","email":"techswivelqa@gmail.com","avatar":"uploads/categories/9d3acfeb5b40c0d8361f6dcf2ceaa51b.png","firebaseCustomToken":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9","jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9"},"ordersResponse":{"ordersList":[{"customerDetail":{"customerId":123,"providedCustomerId":123,"orderID":12,"tourId":1,"customerNumber":923236104016,"customerName":"Hamza bhatti","destinationLatitude":72.22222,"destinationlongitude":32.22222,"address":"2Shahab pora road sialkot","orderStatus":"Transited","customerWish":"user wish list"},"orderItems":[{"itemId":2,"itemName":"Cold Drink","itemTotal":15,"itemAvatar":"image.png","isScannable":true,"boxIds":[123,123,123]},{"itemId":3,"itemName":"KFC","itemTotal":15,"itemAvatar":"image.png","isScannable":false,"boxIds":[]}]},{"customerDetail":{"customerId":123,"providedCustomerId":123,"orderID":12,"tourId":1,"customerNumber":923236104016,"customerName":"Hamza bhatti","destinationLatitude":72.22222,"destinationlongitude":32.22222,"address":"2Shahab pora road sialkot","orderStatus":"Transited","customerWish":"user wish list"},"orderItems":[{"itemId":2,"itemName":"Cold Drink","itemTotal":15,"itemAvatar":"image.png","isScannable":true,"boxIds":[123,123,123]},{"itemId":3,"itemName":"KFC","itemTotal":15,"itemAvatar":"image.png","isScannable":false,"boxIds":[]}]}],"emptiesList":[{"id":1,"partNo":390000,"image":"https://www.techswivel.com/pictures/pictures.jpg","description":"TK Box inkl Akku"},{"id":2,"partNo":399990,"image":"https://www.techswivel.com/pictures/pictures.jpg","description":"Holzkiste Hellers Brauerei Pfand"}]}}

class Response {
  Response({
    bool? status,
    Data? data,
  }) {
    _status = status;
    _data = data;
  }

  Response.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? _status;
  Data? _data;

  Response copyWith({
    bool? status,
    Data? data,
  }) =>
      Response(
        status: status ?? _status,
        data: data ?? _data,
      );

  bool? get status => _status;

  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}
