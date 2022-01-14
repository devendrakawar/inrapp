import 'package:http/http.dart' as http;
import 'UserReferalDetailsResponse.dart';

class NetworkServices {
  static const String referalDetailsURL =
      'https://developer.satmatgroup.com/coinlee/applogin/getUserReferalDetails';
  static Future<UserReferalDetailsResponse> getUsers() async {
    final response = await http
        .post(Uri.parse(referalDetailsURL), body: {"coinlee_user_id": "186"});

    if (200 == response.statusCode) {
      final UserReferalDetailsResponse users =
          userReferalDetailsResponseFromJson(response.body);
      return users;
    } else {
      var result = Result(
          coinleeUserId: "",
          userFirstName: "",
          userLastName: "",
          userMobile: "",
          userEmail: "",
          addedDatetime: DateTime.now(),
          totalCoinsPurchase: 0,
          totalCoinsReceivedByReferer: 0,
          intrestCoinsAgainstHolding: "");
      return UserReferalDetailsResponse(
          status: false, message: "faild", result: [result]);
    }
  }
}
