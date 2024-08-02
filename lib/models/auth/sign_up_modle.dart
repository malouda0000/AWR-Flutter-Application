class SignUpModle {
    SignUpModle({
        required this.resultSignUp,
        required this.statusCode,
        required this.message,
    });

    final ResultSignUP? resultSignUp;
    static const String resultsignUpKey = "result";
    
    final int? statusCode;
    static const String statusCodeKey = "statusCode";
    
    final String? message;
    static const String messageKey = "message";
    

    SignUpModle copyWith({
        ResultSignUP? resultSignUp,
        int? statusCode,
        String? message,
    }) {
        return SignUpModle(
            resultSignUp: resultSignUp ?? this.resultSignUp,
            statusCode: statusCode ?? this.statusCode,
            message: message ?? this.message,
        );
    }

    factory SignUpModle.fromJson(Map<String, dynamic> json){ 
        return SignUpModle(
            resultSignUp: json["result"] == null ? null : ResultSignUP.fromJson(json["result"]),
            statusCode: json["statusCode"],
            message: json["message"],
        );
    }

    Map<String, dynamic> toJson() => {
        "result": resultSignUp?.toJson(),
        "statusCode": statusCode,
        "message": message,
    };

    @override
    String toString(){
        return "$resultSignUp, $statusCode, $message, ";
    }
}

class ResultSignUP {
    ResultSignUP({
        required this.customerSignUp,
        required this.accessToken,
    });

    final CustomerSignUp? customerSignUp;
    static const String customerKey = "customer";
    
    final String? accessToken;
    static const String accessTokenKey = "accessToken";
    

    ResultSignUP copyWith({
        CustomerSignUp? customer,
        String? accessToken,
    }) {
        return ResultSignUP (
            customerSignUp: customerSignUp ?? this.customerSignUp,
            accessToken: accessToken ?? this.accessToken,
        );
    }

    factory ResultSignUP.fromJson(Map<String, dynamic> json){ 
        return ResultSignUP(
            customerSignUp: json["customer"] == null ? null : CustomerSignUp.fromJson(json["customer"]),
            accessToken: json["accessToken"],
        );
    }

    Map<String, dynamic> toJson() => {
        "customer": customerSignUp?.toJson(),
        "accessToken": accessToken,
    };

    @override
    String toString(){
        return "$customerSignUp, $accessToken, ";
    }
}

class CustomerSignUp {
    CustomerSignUp({
        required this.id,
        required this.name,
        required this.email,
        required this.phoneNumber,
        required this.phoneVerifiedAt,
        required this.emailVerifiedAt,
        required this.password,
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
    
    final dynamic email;
    static const String emailKey = "email";
    
    final String? phoneNumber;
    static const String phoneNumberKey = "phoneNumber";
    
    final dynamic phoneVerifiedAt;
    static const String phoneVerifiedAtKey = "phoneVerifiedAt";
    
    final dynamic emailVerifiedAt;
    static const String emailVerifiedAtKey = "emailVerifiedAt";
    
    final String? password;
    static const String passwordKey = "password";
    
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
    

    CustomerSignUp copyWith({
        int? id,
        String? name,
        dynamic? email,
        String? phoneNumber,
        dynamic? phoneVerifiedAt,
        dynamic? emailVerifiedAt,
        String? password,
        DateTime? createdAt,
        DateTime? updatedAt,
        bool? isDeleted,
        bool? isBlocked,
        dynamic? blockedBy,
    }) {
        return CustomerSignUp(
            id: id ?? this.id,
            name: name ?? this.name,
            email: email ?? this.email,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
            emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
            password: password ?? this.password,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
            isDeleted: isDeleted ?? this.isDeleted,
            isBlocked: isBlocked ?? this.isBlocked,
            blockedBy: blockedBy ?? this.blockedBy,
        );
    }

    factory CustomerSignUp.fromJson(Map<String, dynamic> json){ 
        return CustomerSignUp(
            id: json["id"],
            name: json["name"],
            email: json["email"],
            phoneNumber: json["phoneNumber"],
            phoneVerifiedAt: json["phoneVerifiedAt"],
            emailVerifiedAt: json["emailVerifiedAt"],
            password: json["password"],
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
        "password": password,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "isDeleted": isDeleted,
        "isBlocked": isBlocked,
        "blockedBy": blockedBy,
    };

    @override
    String toString(){
        return "$id, $name, $email, $phoneNumber, $phoneVerifiedAt, $emailVerifiedAt, $password, $createdAt, $updatedAt, $isDeleted, $isBlocked, $blockedBy, ";
    }
}
