import 'package:crypto_v2/screen/home/home.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../screen/intro/signUp.dart';
import '../service/signUp_service.dart';

class SignupRiverpood extends ChangeNotifier {
  final box = GetStorage();
  final signupservice = SignupService();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController identityDocumentNoController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  void fetch() {
    signupservice.SignupCall(
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            email: emailController.text,
            password: passwordController.text,
            passwordConfirm: confirmPasswordController.text,
            phoneNumber: phoneController.text,
            identityDocumentNo: identityDocumentNoController.text,
            birthday: birthdayController.text,
            userName: userNameController.text)
        .then((value) => {
              if (value == true)
                {
                  box.write("token", value.token),
                  //deneme amaci ile yazildi;
                  print("kaydedilen token ${box.read("token")}"),
                  MaterialPageRoute(builder: (context) => home()),
                }
              else
                {
                  MaterialPageRoute(builder: (context) => signup2()),
                }
            });
  }
}
