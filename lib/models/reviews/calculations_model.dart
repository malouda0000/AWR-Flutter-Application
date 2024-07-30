import 'dart:convert';

class CalculationModel {
    CalculationResult result;
    int statusCode;
    String message;

    CalculationModel({
        required this.result,
        required this.statusCode,
        required this.message,
    });

    CalculationModel copyWith({
        CalculationResult? result,
        int? statusCode,
        String? message,
    }) => 
        CalculationModel(
            result: result ?? this.result,
            statusCode: statusCode ?? this.statusCode,
            message: message ?? this.message,
        );

    factory CalculationModel.fromRawJson(String str) => CalculationModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CalculationModel.fromJson(Map<String, dynamic> json) => CalculationModel(
        result: CalculationResult.fromJson(json["result"]),
        statusCode: json["statusCode"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "result": result.toJson(),
        "statusCode": statusCode,
        "message": message,
    };
}

class CalculationResult {
    int totalReviews;
    int fiveStars;
    int fourStars;
    int threeStars;
    int twoStars;
    int oneStars;
    int averageRating;

    CalculationResult({
        required this.totalReviews,
        required this.fiveStars,
        required this.fourStars,
        required this.threeStars,
        required this.twoStars,
        required this.oneStars,
        required this.averageRating,
    });

    CalculationResult copyWith({
        int? totalReviews,
        int? fiveStars,
        int? fourStars,
        int? threeStars,
        int? twoStars,
        int? oneStars,
        int? averageRating,
    }) => 
        CalculationResult(
            totalReviews: totalReviews ?? this.totalReviews,
            fiveStars: fiveStars ?? this.fiveStars,
            fourStars: fourStars ?? this.fourStars,
            threeStars: threeStars ?? this.threeStars,
            twoStars: twoStars ?? this.twoStars,
            oneStars: oneStars ?? this.oneStars,
            averageRating: averageRating ?? this.averageRating,
        );

    factory CalculationResult.fromRawJson(String str) => CalculationResult.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CalculationResult.fromJson(Map<String, dynamic> json) => CalculationResult(
        totalReviews: json["totalReviews"],
        fiveStars: json["fiveStars"],
        fourStars: json["fourStars"],
        threeStars: json["threeStars"],
        twoStars: json["twoStars"],
        oneStars: json["oneStars"],
        averageRating: json["averageRating"],
    );

    Map<String, dynamic> toJson() => {
        "totalReviews": totalReviews,
        "fiveStars": fiveStars,
        "fourStars": fourStars,
        "threeStars": threeStars,
        "twoStars": twoStars,
        "oneStars": oneStars,
        "averageRating": averageRating,
    };
}
