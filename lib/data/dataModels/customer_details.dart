/// customerId : 123
/// providedCustomerId : 123
/// orderID : 12
/// tourId : 1
/// customerNumber : 923236104016
/// customerName : "Hamza bhatti"
/// destinationLatitude : 72.22222
/// destinationlongitude : 32.22222
/// address : "2Shahab pora road sialkot"
/// orderStatus : "Transited"
/// customerWish : "user wish list"

class CustomerDetail {
  CustomerDetail({
    num? customerId,
    num? providedCustomerId,
    num? orderID,
    num? tourId,
    num? customerNumber,
    String? customerName,
    num? destinationLatitude,
    num? destinationlongitude,
    String? address,
    String? orderStatus,
    String? customerWish,
  }) {
    _customerId = customerId;
    _providedCustomerId = providedCustomerId;
    _orderID = orderID;
    _tourId = tourId;
    _customerNumber = customerNumber;
    _customerName = customerName;
    _destinationLatitude = destinationLatitude;
    _destinationlongitude = destinationlongitude;
    _address = address;
    _orderStatus = orderStatus;
    _customerWish = customerWish;
  }

  CustomerDetail.fromJson(dynamic json) {
    _customerId = json['customerId'];
    _providedCustomerId = json['providedCustomerId'];
    _orderID = json['orderID'];
    _tourId = json['tourId'];
    _customerNumber = json['customerNumber'];
    _customerName = json['customerName'];
    _destinationLatitude = json['destinationLatitude'];
    _destinationlongitude = json['destinationlongitude'];
    _address = json['address'];
    _orderStatus = json['orderStatus'];
    _customerWish = json['customerWish'];
  }

  num? _customerId;
  num? _providedCustomerId;
  num? _orderID;
  num? _tourId;
  num? _customerNumber;
  String? _customerName;
  num? _destinationLatitude;
  num? _destinationlongitude;
  String? _address;
  String? _orderStatus;
  String? _customerWish;

  CustomerDetail copyWith({
    num? customerId,
    num? providedCustomerId,
    num? orderID,
    num? tourId,
    num? customerNumber,
    String? customerName,
    num? destinationLatitude,
    num? destinationlongitude,
    String? address,
    String? orderStatus,
    String? customerWish,
  }) =>
      CustomerDetail(
        customerId: customerId ?? _customerId,
        providedCustomerId: providedCustomerId ?? _providedCustomerId,
        orderID: orderID ?? _orderID,
        tourId: tourId ?? _tourId,
        customerNumber: customerNumber ?? _customerNumber,
        customerName: customerName ?? _customerName,
        destinationLatitude: destinationLatitude ?? _destinationLatitude,
        destinationlongitude: destinationlongitude ?? _destinationlongitude,
        address: address ?? _address,
        orderStatus: orderStatus ?? _orderStatus,
        customerWish: customerWish ?? _customerWish,
      );

  num? get customerId => _customerId;

  num? get providedCustomerId => _providedCustomerId;

  num? get orderID => _orderID;

  num? get tourId => _tourId;

  num? get customerNumber => _customerNumber;

  String? get customerName => _customerName;

  num? get destinationLatitude => _destinationLatitude;

  num? get destinationlongitude => _destinationlongitude;

  String? get address => _address;

  String? get orderStatus => _orderStatus;

  String? get customerWish => _customerWish;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customerId'] = _customerId;
    map['providedCustomerId'] = _providedCustomerId;
    map['orderID'] = _orderID;
    map['tourId'] = _tourId;
    map['customerNumber'] = _customerNumber;
    map['customerName'] = _customerName;
    map['destinationLatitude'] = _destinationLatitude;
    map['destinationlongitude'] = _destinationlongitude;
    map['address'] = _address;
    map['orderStatus'] = _orderStatus;
    map['customerWish'] = _customerWish;
    return map;
  }
}
