import 'package:crypto_v2/screen/intro/create_password.dart';
import 'package:crypto_v2/screen/intro/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../setting/themes.dart';

class Code extends StatefulWidget {
  ThemeBloc themeBloc;
  Code({this.themeBloc});
  //const Code({Key key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState(themeBloc);
}

class _CodeState extends State<Code> {
  _CodeState(ThemeBloc themeBloc);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFF0F233D)),
        child: Stack(
          children: <Widget>[
            ///
            /// Set image in top
            ///

            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.only(top: mediaQuery.padding.top + 160.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100.0),
                            child: Image.asset("assets/image/logoxbionbi.png",
                                height: 35.0),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Şifremi Unuttum',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: Text(
                            'Lütfen mailinize gelen 4 haneli şifreyi giriniz.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 60.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreatePasswordPage()),
                          );
                        },
                        child: Container(
                          height: 50.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              color: Color(0xFF0AC0B5),
                              width: 0.35,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              " Gönder",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.5,
                                  letterSpacing: 1.2),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // child: Container(
                    //   height: 50.0,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    //     color: Colors.greenAccent,
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       "Doğrulama kodu Gönder",
                    //       style: TextStyle(
                    //           color: Colors.white,
                    //           fontWeight: FontWeight.w400,
                    //           fontSize: 15.0,
                    //           letterSpacing: 1.0),
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      height: 20.0,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       Navigator.of(context)
                    //           .pushReplacement(PageRouteBuilder(
                    //               pageBuilder: (_, __, ___) => new login(
                    //                     themeBloc: _themeBloc,
                    //                   )));
                    //     },
                    //     child: Container(
                    //       height: 50.0,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(0.0)),
                    //         border: Border.all(
                    //           color: colorStyle.primaryColor,
                    //           width: 0.35,
                    //         ),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           "Back to login",
                    //           style: TextStyle(
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.w100,
                    //               fontSize: 16.5,
                    //               letterSpacing: 1.2),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
