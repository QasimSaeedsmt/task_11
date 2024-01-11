/// firstName : "Musaddiq"
/// lastName : "Ansar"
/// email : "techswivelqa@gmail.com"
/// avatar : "uploads/categories/9d3acfeb5b40c0d8361f6dcf2ceaa51b.png"
/// firebaseCustomToken : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9"
/// jwt : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9"

class AuthResponse {
  AuthResponse({
    String? firstName,
    String? lastName,
    String? email,
    String? avatar,
    String? firebaseCustomToken,
    String? jwt,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _avatar = avatar;
    _firebaseCustomToken = firebaseCustomToken;
    _jwt = jwt;
  }

  AuthResponse.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _avatar = json['avatar'];
    _firebaseCustomToken = json['firebaseCustomToken'];
    _jwt = json['jwt'];
  }

  String? _firstName;
  String? _lastName;
  String? _email;
  String? _avatar;
  String? _firebaseCustomToken;
  String? _jwt;

  AuthResponse copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? avatar,
    String? firebaseCustomToken,
    String? jwt,
  }) =>
      AuthResponse(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        email: email ?? _email,
        avatar: avatar ?? _avatar,
        firebaseCustomToken: firebaseCustomToken ?? _firebaseCustomToken,
        jwt: jwt ?? _jwt,
      );

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get email => _email;

  String? get avatar => _avatar;

  String? get firebaseCustomToken => _firebaseCustomToken;

  String? get jwt => _jwt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['email'] = _email;
    map['avatar'] = _avatar;
    map['firebaseCustomToken'] = _firebaseCustomToken;
    map['jwt'] = _jwt;
    return map;
  }
}
