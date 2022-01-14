// To parse this JSON data, do
//
//     final userReferalDetailsResponse = userReferalDetailsResponseFromJson(jsonString);

import 'dart:convert';

UserReferalDetailsResponse userReferalDetailsResponseFromJson(String str) =>
    UserReferalDetailsResponse.fromJson(json.decode(str));

//String userReferalDetailsResponseToJson(UserReferalDetailsResponse data) =>
//json.encode(data.toJson());

class UserReferalDetailsResponse {
  UserReferalDetailsResponse({
    this.status = false,
    this.message = "",
    required this.result,
  });

  bool status;
  String message;
  final List<Result> result;

  factory UserReferalDetailsResponse.fromJson(Map<String, dynamic> json) =>
      UserReferalDetailsResponse(
        status: json["status"],
        message: json["message"],
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
      );

  /* Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
      */
}

class Result {
  Result({
    this.coinleeUserId,
    this.userFirstName,
    this.userLastName,
    this.userMobile,
    this.userEmail,
    this.addedDatetime,
    this.totalCoinsPurchase,
    this.totalCoinsReceivedByReferer,
    this.intrestCoinsAgainstHolding,
  });
  

  String? coinleeUserId;
  String? userFirstName;
  String? userLastName;
  String? userMobile;
  String? userEmail;
  DateTime? addedDatetime;
  double? totalCoinsPurchase;
  int? totalCoinsReceivedByReferer;
  String? intrestCoinsAgainstHolding;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        coinleeUserId: json["coinlee_user_id"],
        userFirstName: json["user_first_name"],
        userLastName: json["user_last_name"],
        userMobile: json["user_mobile"],
        userEmail: json["user_email"],
        addedDatetime: DateTime.parse(json["added_datetime"]),
        totalCoinsPurchase: json["total_coins_purchase"].toDouble(),
        totalCoinsReceivedByReferer: json["total_coins_received_by_referer"],
        intrestCoinsAgainstHolding: json["intrest_coins_against_holding"],
      );

  /* Map<String, dynamic> toJson() => {
        "coinlee_user_id": coinleeUserId,
        "user_first_name": userFirstName,
        "user_last_name": userLastName,
        "user_mobile": userMobile,
        "user_email": userEmail,
        "total_coins_purchase": totalCoinsPurchase,
        "total_coins_received_by_referer": totalCoinsReceivedByReferer,
        "intrest_coins_against_holding": intrestCoinsAgainstHolding,
      };
      */
}
