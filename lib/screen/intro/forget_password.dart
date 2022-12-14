import 'package:crypto_v2/screen/intro/login.dart';
import 'package:crypto_v2/screen/intro/signUp.dart';
import 'package:crypto_v2/screen/intro/verficationcode.dart';
import 'package:crypto_v2/screen/setting/themes.dart';
import 'package:flutter/material.dart';
import 'package:crypto_v2/component/style.dart';

class forgetPassword extends StatefulWidget {
  ThemeBloc themeBloc;
  forgetPassword({this.themeBloc});
  @override
  _forgetPasswordState createState() => _forgetPasswordState(themeBloc);
}

class _forgetPasswordState extends State<forgetPassword> {
  ThemeBloc _themeBloc;
  _forgetPasswordState(this._themeBloc);
  @override
  final TextEditingController _emailController = TextEditingController();
  //final TextEditingController _passwordController = TextEditingController();
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: colorStyle.background),
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
                          '??ifremi Unuttum',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'L??tfen ??ifrenizi yenilemek i??in mail adresinizi giriniz.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 50.0),
                      child: _buildTextFeild(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide:
                                  BorderSide(color: colorStyle.primaryColor)),
                          widgetIcon: Icon(
                            Icons.email,
                            color: colorStyle.primaryColor,
                            size: 20,
                          ),
                          controller: _emailController,
                          hint: 'Mail Adresi',
                          obscure: false,
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 60.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Code(
                                        themeBloc: _themeBloc,
                                      )));
                        },
                        child: Container(
                          height: 50.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFF0AC0B5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              color: colorStyle.primaryColor,
                              width: 0.35,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Do??rulama kodu G??nder",
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
                    //       "Do??rulama kodu G??nder",
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

  Widget _buildTextFeild({
    border: InputBorder.none,
    String hint,
    TextEditingController controller,
    TextInputType keyboardType,
    bool obscure,
    String icon,
    TextAlign textAlign,
    Widget widgetIcon,
  }) {
    return Column(
      children: <Widget>[
        Container(
          height: 55.5,
          decoration: BoxDecoration(
            color: Colors.black26,
//              color: Color(0xFF282E41),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            border: Border.all(
              color: colorStyle.primaryColor,
              width: 0.15,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
            child: Theme(
              data: ThemeData(hintColor: Colors.transparent),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  style: new TextStyle(color: Colors.white),
                  textAlign: textAlign,
                  obscureText: obscure,
                  controller: controller,
                  keyboardType: keyboardType,
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: widgetIcon,
                      ),
                      contentPadding: EdgeInsets.all(0.0),
                      filled: true,
                      fillColor: Colors.transparent,
                      labelText: hint,
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                        color: Colors.white70,
                      )),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
