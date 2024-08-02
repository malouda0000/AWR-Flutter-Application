import 'dart:convert';

class ProductReviewsModel {
    ReviewsResult result;
    int statusCode;
    String message;

    ProductReviewsModel({
        required this.result,
        required this.statusCode,
        required this.message,
    });

    ProductReviewsModel copyWith({
        ReviewsResult? result,
        int? statusCode,
        String? message,
    }) => 
        ProductReviewsModel(
            result: result ?? this.result,
            statusCode: statusCode ?? this.statusCode,
            message: message ?? this.message,
        );

    factory ProductReviewsModel.fromRawJson(String str) => ProductReviewsModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductReviewsModel.fromJson(Map<String, dynamic> json) => ProductReviewsModel(
        result: ReviewsResult.fromJson(json["result"]),
        statusCode: json["statusCode"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "result": result.toJson(),
        "statusCode": statusCode,
        "message": message,
    };
}

class ReviewsResult {
    List<Review> reviews;
    int reviewsCount;

    ReviewsResult({
        required this.reviews,
        required this.reviewsCount,
    });

    ReviewsResult copyWith({
        List<Review>? reviews,
        int? reviewsCount,
    }) => 
        ReviewsResult(
            reviews: reviews ?? this.reviews,
            reviewsCount: reviewsCount ?? this.reviewsCount,
        );

    factory ReviewsResult.fromRawJson(String str) => ReviewsResult.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ReviewsResult.fromJson(Map<String, dynamic> json) => ReviewsResult(
        reviews: List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        reviewsCount: json["reviewsCount"],
    );

    Map<String, dynamic> toJson() => {
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
        "reviewsCount": reviewsCount,
    };
}

class Review {
    int id;
    String comment;
    int rating;
    int customerId;
    int productId;
    DateTime createdAt;
    DateTime updatedAt;
    ReviewerCustomer customer;

    Review({
        required this.id,
        required this.comment,
        required this.rating,
        required this.customerId,
        required this.productId,
        required this.createdAt,
        required this.updatedAt,
        required this.customer,
    });

    Review copyWith({
        int? id,
        String? comment,
        int? rating,
        int? customerId,
        int? productId,
        DateTime? createdAt,
        DateTime? updatedAt,
        ReviewerCustomer? customer,
    }) => 
        Review(
            id: id ?? this.id,
            comment: comment ?? this.comment,
            rating: rating ?? this.rating,
            customerId: customerId ?? this.customerId,
            productId: productId ?? this.productId,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
            customer: customer ?? this.customer,
        );

    factory Review.fromRawJson(String str) => Review.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        comment: json["comment"],
        rating: json["rating"],
        customerId: json["customerId"],
        productId: json["productId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        customer: ReviewerCustomer.fromJson(json["Customer"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "comment": comment,
        "rating": rating,
        "customerId": customerId,
        "productId": productId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "Customer": customer.toJson(),
    };
}

class ReviewerCustomer {
    String name;

    ReviewerCustomer({
        required this.name,
    });

    ReviewerCustomer copyWith({
        String? name,
    }) => 
        ReviewerCustomer(
            name: name ?? this.name,
        );

    factory ReviewerCustomer.fromRawJson(String str) => ReviewerCustomer.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ReviewerCustomer.fromJson(Map<String, dynamic> json) => ReviewerCustomer(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}
