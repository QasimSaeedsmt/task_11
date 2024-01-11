import 'customer_details.dart';
import 'order_items.dart';

/// customerDetail : {"customerId":123,"providedCustomerId":123,"orderID":12,"tourId":1,"customerNumber":923236104016,"customerName":"Hamza bhatti","destinationLatitude":72.22222,"destinationlongitude":32.22222,"address":"2Shahab pora road sialkot","orderStatus":"Transited","customerWish":"user wish list"}
/// orderItems : [{"itemId":2,"itemName":"Cold Drink","itemTotal":15,"itemAvatar":"image.png","isScannable":true,"boxIds":[123,123,123]},{"itemId":3,"itemName":"KFC","itemTotal":15,"itemAvatar":"image.png","isScannable":false,"boxIds":[]}]

class OrdersList {
  OrdersList({
    CustomerDetail? customerDetail,
    List<OrderItems>? orderItems,
  }) {
    _customerDetail = customerDetail;
    _orderItems = orderItems;
  }

  OrdersList.fromJson(dynamic json) {
    _customerDetail = json['customerDetail'] != null
        ? CustomerDetail.fromJson(json['customerDetail'])
        : null;
    if (json['orderItems'] != null) {
      _orderItems = [];
      json['orderItems'].forEach((v) {
        _orderItems?.add(OrderItems.fromJson(v));
      });
    }
  }

  CustomerDetail? _customerDetail;
  List<OrderItems>? _orderItems;

  OrdersList copyWith({
    CustomerDetail? customerDetail,
    List<OrderItems>? orderItems,
  }) =>
      OrdersList(
        customerDetail: customerDetail ?? _customerDetail,
        orderItems: orderItems ?? _orderItems,
      );

  CustomerDetail? get customerDetail => _customerDetail;

  List<OrderItems>? get orderItems => _orderItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_customerDetail != null) {
      map['customerDetail'] = _customerDetail?.toJson();
    }
    if (_orderItems != null) {
      map['orderItems'] = _orderItems?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
