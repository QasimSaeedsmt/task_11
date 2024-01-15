import 'empties_list.dart';
import 'order_list.dart';

/// ordersList : [{"customerDetail":{"customerId":123,"providedCustomerId":123,"orderID":12,"tourId":1,"customerNumber":923236104016,"customerName":"Hamza bhatti","destinationLatitude":72.22222,"destinationlongitude":32.22222,"address":"2Shahab pora road sialkot","orderStatus":"Transited","customerWish":"user wish list"},"orderItems":[{"itemId":2,"itemName":"Cold Drink","itemTotal":15,"itemAvatar":"image.png","isScannable":true,"boxIds":[123,123,123]},{"itemId":3,"itemName":"KFC","itemTotal":15,"itemAvatar":"image.png","isScannable":false,"boxIds":[]}]},{"customerDetail":{"customerId":123,"providedCustomerId":123,"orderID":12,"tourId":1,"customerNumber":923236104016,"customerName":"Hamza bhatti","destinationLatitude":72.22222,"destinationlongitude":32.22222,"address":"2Shahab pora road sialkot","orderStatus":"Transited","customerWish":"user wish list"},"orderItems":[{"itemId":2,"itemName":"Cold Drink","itemTotal":15,"itemAvatar":"image.png","isScannable":true,"boxIds":[123,123,123]},{"itemId":3,"itemName":"KFC","itemTotal":15,"itemAvatar":"image.png","isScannable":false,"boxIds":[]}]}]
/// emptiesList : [{"id":1,"partNo":390000,"image":"https://www.techswivel.com/pictures/pictures.jpg","description":"TK Box inkl Akku"},{"id":2,"partNo":399990,"image":"https://www.techswivel.com/pictures/pictures.jpg","description":"Holzkiste Hellers Brauerei Pfand"}]

class OrdersResponse {
  OrdersResponse({
    List<OrdersList>? ordersList,
    List<EmptiesList>? emptiesList,
  }) {
    _ordersList = ordersList;
    _emptiesList = emptiesList;
  }

  OrdersResponse.fromJson(dynamic json) {
    if (json['ordersList'] != null) {
      _ordersList = [];
      json['ordersList'].forEach((v) {
        _ordersList?.add(OrdersList.fromJson(v));
      });
    }
    if (json['emptiesList'] != null) {
      _emptiesList = [];
      json['emptiesList'].forEach((v) {
        _emptiesList?.add(EmptiesList.fromJson(v));
      });
    }
  }

  List<OrdersList>? _ordersList;
  List<EmptiesList>? _emptiesList;

  OrdersResponse copyWith({
    List<OrdersList>? ordersList,
    List<EmptiesList>? emptiesList,
  }) =>
      OrdersResponse(
        ordersList: ordersList ?? _ordersList,
        emptiesList: emptiesList ?? _emptiesList,
      );

  List<OrdersList>? get ordersList => _ordersList;

  List<EmptiesList>? get emptiesList => _emptiesList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ordersList != null) {
      map['ordersList'] = _ordersList?.map((v) => v.toJson()).toList();
    }
    if (_emptiesList != null) {
      map['emptiesList'] = _emptiesList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
