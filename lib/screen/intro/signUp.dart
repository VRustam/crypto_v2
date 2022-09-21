import 'package:crypto_v2/component/style.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../RiverPood/Riverpood_management.dart';
import '../../RiverPood/SignupRiverpood.dart';

class signup2 extends ConsumerStatefulWidget {
  const signup2({Key key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _signup2State();
}

class _signup2State extends ConsumerState<signup2> {
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  /// final SignupRiverpood signupRiverpood = SignupRiverpood();

  /// SignupProvider signupProvider;

  // This function is triggered when the button is clicked
  void _doSomething() {
    // Do something
  }
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: colorStyle.background,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: ScreenUtil().setHeight(60.0)),
                    Container(
                        child: Center(
                            child: Text('Kaydol',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(24),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)))),
                    SizedBox(height: ScreenUtil().setHeight(20)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4).r,
                      child: Text('Kişisel Bilgiler',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(16.0),
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(12)),
                    // Isim
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              controller:
                                  ref.read(signupRiverpood.firstNameController),
                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'İsim',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(16.0)),

                    //Soyisim
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              /// controller: signupProvider.lastNameController,
                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Soyisim',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(16.0)),

                    //TC Kimlik numarasi
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.badge,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'TC Kimlik numarası',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(16.0)),

                    //Dogum tarihi
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Doğum tarihi',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(16.0)),

                    // Telefon numarasi
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              ///  controller: signupProvider.phoneController,
                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Telefon numarası',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(20.0)),

                    //Hesap bilgileri
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4).r,
                      child: Text('Kayıt Bilgileri',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(16.0),
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(12)),

                    // Mail Adresi
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.mail,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              /// controller: signupProvider.emailController,
                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Mail adresi',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(16.0)),

                    //Şifre
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.key,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              obscureText: true,

                              ///  controller: signupProvider.passwordController,
                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Şifre',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(16.0)),
                    //Şifre tekrar
                    Container(
                      margin: EdgeInsets.all(2).r,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 2).r,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10)),
                          border: Border.all(color: colorStyle.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.key,
                            color: colorStyle.primaryColor,
                            size: 22.0,
                          ),
                          Flexible(
                            child: TextField(
                              obscureText: true,

                              ///  controller:signupProvider.confirmPasswordController,

                              cursorColor: colorStyle.primaryColor,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16.0)),
                              enabled: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Şifre tekrar',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15.0).r,
                                hintStyle: TextStyle(color: Colors.white70),
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(16.0)),

                    // Checkbox
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Checkbox(
                          activeColor: colorStyle.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => BorderSide(
                                width: 1.0,
                                color: Colors.white.withOpacity(0.6)),
                          ),
                          checkColor: colorStyle.background,
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 5.0).r,
                            child: RichText(
                              overflow: TextOverflow.clip,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Bionbi'yi okudum ve ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(13.0)),
                                  ),
                                  TextSpan(
                                    text: 'Kullanım Koşullarını',
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(13.0),
                                        fontWeight: FontWeight.w500,
                                        color: colorStyle.primaryColor,
                                        decoration: TextDecoration.underline),
                                  ),
                                  TextSpan(
                                      text: " kabul ediyorum.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(13.0))),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.all(2).r,
                      height: ScreenUtil().setHeight(60.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: colorStyle.primaryColor,
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(10))),
                      child: ElevatedButton(
                        onPressed: () {
                          SignupRiverpood().fetch();
                        },
                        child: Text(
                          'Giriş Yap',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(13)),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Hesabınız var mı? ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(14.0)),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Giriş Yap!',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(14.0),
                                  fontWeight: FontWeight.w500,
                                  color: colorStyle.primaryColor,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
