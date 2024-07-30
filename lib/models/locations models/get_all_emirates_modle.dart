import 'dart:convert';

class GetAllEmiratesModle {
  EmiratesResult result;
  int statusCode;
  String message;

  GetAllEmiratesModle({
    required this.result,
    required this.statusCode,
    required this.message,
  });

  GetAllEmiratesModle copyWith({
    EmiratesResult? result,
    int? statusCode,
    String? message,
  }) =>
      GetAllEmiratesModle(
        result: result ?? this.result,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message,
      );

  factory GetAllEmiratesModle.fromRawJson(String str) =>
      GetAllEmiratesModle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetAllEmiratesModle.fromJson(Map<String, dynamic> json) =>
      GetAllEmiratesModle(
        result: EmiratesResult.fromJson(json["result"]),
        statusCode: json["statusCode"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "result": result.toJson(),
        "statusCode": statusCode,
        "message": message,
      };
}

class EmiratesResult {
  List<AddressCityModle> addressCities;

  EmiratesResult({
    required this.addressCities,
  });

  EmiratesResult copyWith({
    List<AddressCityModle>? addressCities,
  }) =>
      EmiratesResult(
        addressCities: addressCities ?? this.addressCities,
      );

  factory EmiratesResult.fromRawJson(String str) =>
      EmiratesResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmiratesResult.fromJson(Map<String, dynamic> json) => EmiratesResult(
        addressCities: List<AddressCityModle>.from(
            json["addressCities"].map((x) => AddressCityModle.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "addressCities":
            List<dynamic>.from(addressCities.map((x) => x.toJson())),
      };
}

class AddressCityModle {
  int id;
  String nameEn;
  String nameAr;
  DateTime createdAt;
  DateTime updatedAt;
  bool isDeleted;

  AddressCityModle({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
  });

  AddressCityModle copyWith({
    int? id,
    String? nameEn,
    String? nameAr,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isDeleted,
  }) =>
      AddressCityModle(
        id: id ?? this.id,
        nameEn: nameEn ?? this.nameEn,
        nameAr: nameAr ?? this.nameAr,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isDeleted: isDeleted ?? this.isDeleted,
      );

  factory AddressCityModle.fromRawJson(String str) =>
      AddressCityModle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddressCityModle.fromJson(Map<String, dynamic> json) =>
      AddressCityModle(
        id: json["id"],
        nameEn: json["nameEn"],
        nameAr: json["nameAr"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        isDeleted: json["isDeleted"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameEn": nameEn,
        "nameAr": nameAr,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "isDeleted": isDeleted,
      };
}
