// class SignInModle {
//     SignInModle({
//         required this.data,
//         required this.statusCode,
//         required this.message,
//     });

//     final Data? data;
//     static const String dataKey = "data";

//     final int? statusCode;
//     static const String statusCodeKey = "statusCode";

//     final String? message;
//     static const String messageKey = "message";

//     SignInModle copyWith({
//         Data? data,
//         int? statusCode,
//         String? message,
//     }) {
//         return SignInModle(
//             data: data ?? this.data,
//             statusCode: statusCode ?? this.statusCode,
//             message: message ?? this.message,
//         );
//     }

//     factory SignInModle.fromJson(Map<String, dynamic> json){
//         return SignInModle(
//             data: json["data"] == null ? null : Data.fromJson(json["data"]),
//             statusCode: json["statusCode"],
//             message: json["message"],
//         );
//     }

//     Map<String, dynamic> toJson() => {
//         "data": data?.toJson(),
//         "statusCode": statusCode,
//         "message": message,
//     };

//     @override
//     String toString(){
//         return "$data, $statusCode, $message, ";
//     }
// }

// class Data {
//     Data({
//         required this.customer,
//         required this.accessToken,
//     });

//     final Customer? customer;
//     static const String customerKey = "customer";

//     final String? accessToken;
//     static const String accessTokenKey = "accessToken";

//     Data copyWith({
//         Customer? customer,
//         String? accessToken,
//     }) {
//         return Data(
//             customer: customer ?? this.customer,
//             accessToken: accessToken ?? this.accessToken,
//         );
//     }

//     factory Data.fromJson(Map<String, dynamic> json){
//         return Data(
//             customer: json["customer"] == null ? null : Customer.fromJson(json["customer"]),
//             accessToken: json["accessToken"],
//         );
//     }

//     Map<String, dynamic> toJson() => {
//         "customer": customer?.toJson(),
//         "accessToken": accessToken,
//     };

//     @override
//     String toString(){
//         return "$customer, $accessToken, ";
//     }
// }

// class Customer {
//     Customer({
//         required this.id,
//         required this.name,
//         required this.email,
//         required this.phoneNumber,
//         required this.phoneVerifiedAt,
//         required this.emailVerifiedAt,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.isDeleted,
//         required this.isBlocked,
//         required this.blockedBy,
//     });

//     final int? id;
//     static const String idKey = "id";

//     final String? name;
//     static const String nameKey = "name";

//     final String? email;
//     static const String emailKey = "email";

//     final String? phoneNumber;
//     static const String phoneNumberKey = "phoneNumber";

//     final dynamic phoneVerifiedAt;
//     static const String phoneVerifiedAtKey = "phoneVerifiedAt";

//     final dynamic emailVerifiedAt;
//     static const String emailVerifiedAtKey = "emailVerifiedAt";

//     final DateTime? createdAt;
//     static const String createdAtKey = "createdAt";

//     final DateTime? updatedAt;
//     static const String updatedAtKey = "updatedAt";

//     final bool? isDeleted;
//     static const String isDeletedKey = "isDeleted";

//     final bool? isBlocked;
//     static const String isBlockedKey = "isBlocked";

//     final dynamic blockedBy;
//     static const String blockedByKey = "blockedBy";

//     Customer copyWith({
//         int? id,
//         String? name,
//         String? email,
//         String? phoneNumber,
//         dynamic? phoneVerifiedAt,
//         dynamic? emailVerifiedAt,
//         DateTime? createdAt,
//         DateTime? updatedAt,
//         bool? isDeleted,
//         bool? isBlocked,
//         dynamic? blockedBy,
//     }) {
//         return Customer(
//             id: id ?? this.id,
//             name: name ?? this.name,
//             email: email ?? this.email,
//             phoneNumber: phoneNumber ?? this.phoneNumber,
//             phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
//             emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
//             createdAt: createdAt ?? this.createdAt,
//             updatedAt: updatedAt ?? this.updatedAt,
//             isDeleted: isDeleted ?? this.isDeleted,
//             isBlocked: isBlocked ?? this.isBlocked,
//             blockedBy: blockedBy ?? this.blockedBy,
//         );
//     }

//     factory Customer.fromJson(Map<String, dynamic> json){
//         return Customer(
//             id: json["id"],
//             name: json["name"],
//             email: json["email"],
//             phoneNumber: json["phoneNumber"],
//             phoneVerifiedAt: json["phoneVerifiedAt"],
//             emailVerifiedAt: json["emailVerifiedAt"],
//             createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
//             updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
//             isDeleted: json["isDeleted"],
//             isBlocked: json["isBlocked"],
//             blockedBy: json["blockedBy"],
//         );
//     }

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "email": email,
//         "phoneNumber": phoneNumber,
//         "phoneVerifiedAt": phoneVerifiedAt,
//         "emailVerifiedAt": emailVerifiedAt,
//         "createdAt": createdAt?.toIso8601String(),
//         "updatedAt": updatedAt?.toIso8601String(),
//         "isDeleted": isDeleted,
//         "isBlocked": isBlocked,
//         "blockedBy": blockedBy,
//     };

//     @override
//     String toString(){
//         return "$id, $name, $email, $phoneNumber, $phoneVerifiedAt, $emailVerifiedAt, $createdAt, $updatedAt, $isDeleted, $isBlocked, $blockedBy, ";
//     }
// }

class SignInModle {
  SignInModle({
    required this.result,
    required this.statusCode,
    required this.message,
  });

  final Result? result;
  static const String resultKey = "result";

  final int? statusCode;
  static const String statusCodeKey = "statusCode";

  final String? message;
  static const String messageKey = "message";

  SignInModle copyWith({
    Result? result,
    int? statusCode,
    String? message,
  }) {
    return SignInModle(
      result: result ?? this.result,
      statusCode: statusCode ?? this.statusCode,
      message: message ?? this.message,
    );
  }

  factory SignInModle.fromJson(Map<String, dynamic> json) {
    return SignInModle(
      result: json["result"] == null ? null : Result.fromJson(json["result"]),
      statusCode: json["statusCode"],
      message: json["message"],
    );
  }

  Map<String, dynamic> toJson() => {
        "result": result?.toJson(),
        "statusCode": statusCode,
        "message": message,
      };

  @override
  String toString() {
    return "$result, $statusCode, $message, ";
  }
}

class Result {
  Result({
    required this.customer,
    required this.accessToken,
  });

  final Customer? customer;
  static const String customerKey = "customer";

  final String? accessToken;
  static const String accessTokenKey = "accessToken";

  Result copyWith({
    Customer? customer,
    String? accessToken,
  }) {
    return Result(
      customer: customer ?? this.customer,
      accessToken: accessToken ?? this.accessToken,
    );
  }

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      customer:
          json["customer"] == null ? null : Customer.fromJson(json["customer"]),
      accessToken: json["accessToken"],
    );
  }

  Map<String, dynamic> toJson() => {
        "customer": customer?.toJson(),
        "accessToken": accessToken,
      };

  @override
  String toString() {
    return "$customer, $accessToken, ";
  }
}

class Customer {
  Customer({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.phoneVerifiedAt,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.isBlocked,
    required this.blockedBy,
  });

  final int? id;
  static const String idKey = "id";

  final String? name;
  static const String nameKey = "name";

  final String? email;
  static const String emailKey = "email";

  final String? phoneNumber;
  static const String phoneNumberKey = "phoneNumber";

  final dynamic phoneVerifiedAt;
  static const String phoneVerifiedAtKey = "phoneVerifiedAt";

  final dynamic emailVerifiedAt;
  static const String emailVerifiedAtKey = "emailVerifiedAt";

  final DateTime? createdAt;
  static const String createdAtKey = "createdAt";

  final DateTime? updatedAt;
  static const String updatedAtKey = "updatedAt";

  final bool? isDeleted;
  static const String isDeletedKey = "isDeleted";

  final bool? isBlocked;
  static const String isBlockedKey = "isBlocked";

  final dynamic blockedBy;
  static const String blockedByKey = "blockedBy";

  Customer copyWith({
    int? id,
    String? name,
    String? email,
    String? phoneNumber,
    dynamic? phoneVerifiedAt,
    dynamic? emailVerifiedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isDeleted,
    bool? isBlocked,
    dynamic? blockedBy,
  }) {
    return Customer(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isDeleted: isDeleted ?? this.isDeleted,
      isBlocked: isBlocked ?? this.isBlocked,
      blockedBy: blockedBy ?? this.blockedBy,
    );
  }

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      phoneVerifiedAt: json["phoneVerifiedAt"],
      emailVerifiedAt: json["emailVerifiedAt"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      isDeleted: json["isDeleted"],
      isBlocked: json["isBlocked"],
      blockedBy: json["blockedBy"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phoneNumber": phoneNumber,
        "phoneVerifiedAt": phoneVerifiedAt,
        "emailVerifiedAt": emailVerifiedAt,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "isDeleted": isDeleted,
        "isBlocked": isBlocked,
        "blockedBy": blockedBy,
      };

  @override
  String toString() {
    return "$id, $name, $email, $phoneNumber, $phoneVerifiedAt, $emailVerifiedAt, $createdAt, $updatedAt, $isDeleted, $isBlocked, $blockedBy, ";
  }
}
