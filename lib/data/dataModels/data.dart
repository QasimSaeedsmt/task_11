import 'auth_response.dart';
import 'orders_response.dart';

/// authResponse : {"firstName":"Musaddiq","lastName":"Ansar","email":"techswivelqa@gmail.com","avatar":"uploads/categories/9d3acfeb5b40c0d8361f6dcf2ceaa51b.png","firebaseCustomToken":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9","jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9"}
/// ordersResponse : {"ordersList":[{"customerDetail":{"customerId":123,"providedCustomerId":123,"orderID":12,"tourId":1,"customerNumber":923236104016,"customerName":"Hamza bhatti","destinationLatitude":72.22222,"destinationlongitude":32.22222,"address":"2Shahab pora road sialkot","orderStatus":"Transited","customerWish":"user wish list"},"orderItems":[{"itemId":2,"itemName":"Cold Drink","itemTotal":15,"itemAvatar":"image.png","isScannable":true,"boxIds":[123,123,123]},{"itemId":3,"itemName":"KFC","itemTotal":15,"itemAvatar":"image.png","isScannable":false,"boxIds":[]}]},{"customerDetail":{"customerId":123,"providedCustomerId":123,"orderID":12,"tourId":1,"customerNumber":923236104016,"customerName":"Hamza bhatti","destinationLatitude":72.22222,"destinationlongitude":32.22222,"address":"2Shahab pora road sialkot","orderStatus":"Transited","customerWish":"user wish list"},"orderItems":[{"itemId":2,"itemName":"Cold Drink","itemTotal":15,"itemAvatar":"image.png","isScannable":true,"boxIds":[123,123,123]},{"itemId":3,"itemName":"KFC","itemTotal":15,"itemAvatar":"image.png","isScannable":false,"boxIds":[]}]}],"emptiesList":[{"id":1,"partNo":390000,"image":"https://www.techswivel.com/pictures/pictures.jpg","description":"TK Box inkl Akku"},{"id":2,"partNo":399990,"image":"https://www.techswivel.com/pictures/pictures.jpg","description":"Holzkiste Hellers Brauerei Pfand"}]}

class Data {
  Data({
    AuthResponse? authResponse,
    OrdersResponse? ordersResponse,
  }) {
    _authResponse = authResponse;
    _ordersResponse = ordersResponse;
  }

  Data.fromJson(dynamic json) {
    _authResponse = json['authResponse'] != null
        ? AuthResponse.fromJson(json['authResponse'])
        : null;
    _ordersResponse = json['ordersResponse'] != null
        ? OrdersResponse.fromJson(json['ordersResponse'])
        : null;
  }

  AuthResponse? _authResponse;
  OrdersResponse? _ordersResponse;

  Data copyWith({
    AuthResponse? authResponse,
    OrdersResponse? ordersResponse,
  }) =>
      Data(
        authResponse: authResponse ?? _authResponse,
        ordersResponse: ordersResponse ?? _ordersResponse,
      );

  AuthResponse? get authResponse => _authResponse;

  OrdersResponse? get ordersResponse => _ordersResponse;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_authResponse != null) {
      map['authResponse'] = _authResponse?.toJson();
    }
    if (_ordersResponse != null) {
      map['ordersResponse'] = _ordersResponse?.toJson();
    }
    return map;
  }
}
