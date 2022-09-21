import 'package:dio/dio.dart';

import '../api_model/Signup_model.dart';

class SignupService {
  final String baseUrl = "http://bionbi.com/Register/";
  final dio = Dio();
  Future<SignupModel> SignupCall(
      {String firstName,
      String lastName,
      String phoneNumber,
      String email,
      String userName,
      String birthday,
      String password,
      String passwordConfirm,
      String identityDocumentNo}) async {
    Map<String, dynamic> json = {
      "firstName": firstName,
      "lastName": lastName,
      "phoneNumber": phoneNumber,
      "email": email,
      "userName": userName,
      "birthday": birthday,
      "password": password,
      "passwordConfirm": passwordConfirm,
      "identityDocumentNo": identityDocumentNo
    };
    var response = await dio.post(baseUrl + "Create", data: json);
    if (response.statusCode == 200) {
      var result = SignupModel.fromJson(response.data);
      return result;
    } else {
      throw "bir sorun olusdu ${response.statusCode}";
    }
  }
}
