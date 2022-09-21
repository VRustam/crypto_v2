import 'package:crypto_v2/screen/Bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:crypto_v2/screen/setting/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePasswordPage extends StatefulWidget {
  ThemeBloc themeBloc;
  CreatePasswordPage({this.themeBloc});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  ThemeBloc _themeBloc;

  @override
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        /// Set Background image in splash screen layout (Click to open code)
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
                    /// Animation text marketplace to choose Login with Hero Animation (Click to open code)
                    Padding(
                      padding: EdgeInsets.only(
                          top: mediaQuery.padding.top + 120.0, bottom: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/image/logoxbionbi.png",
                              height: 35.0),
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
                        Text(
                          'Lütfen yeni şifrenizi giriniz.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 60.0),
                      child: _buildTextFeild(
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please typle an password';
                            }
                          },
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide:
                                  BorderSide(color: Colors.greenAccent)),
                          widgetIcon: Icon(
                            Icons.vpn_key,
                            size: 20,
                            color: Colors.greenAccent,
                          ),
                          controller: _passwordController,
                          hint: 'Password',
                          obscure: true,
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0),
                      child: _buildTextFeild(
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please typle an password';
                            }
                          },
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(color: Colors.green)),
                          widgetIcon: Icon(
                            Icons.vpn_key,
                            size: 20,
                            color: Colors.greenAccent,
                          ),
                          controller: _confirmpasswordcontroller,
                          hint: 'Confirm Password',
                          obscure: true,
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 40.0),
                      child: TextButton(
                        onPressed: () {
                          //controll yapiyoruz

                          if (_passwordController ==
                                  _confirmpasswordcontroller &&
                              _passwordController != null &&
                              _confirmpasswordcontroller != null) {
                            Navigator.of(context)
                                .pushReplacement(PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => bottomNavBar(
                                          themeBloc: _themeBloc,
                                        )));
                          } else {
                            print('password hatasi');
                          }
                        },
                        child: Container(
                          height: 50.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xFF0AC0B5),
                          ),
                          child: Center(
                            child: Text(
                              "Gönder",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0,
                                  letterSpacing: 1.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

//                  Padding(
//                    padding: const EdgeInsets.only(left:20.0,right: 20.0,bottom: 15.0),
//                    child: Container(width: double.infinity,height: 0.15,color: colorStyle.primaryColor,),
//                  ),
//                  Text("Register",style: TextStyle(color: colorStyle.primaryColor,fontSize: 17.0,fontWeight: FontWeight.w800),),
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
    FormFieldValidator<String> validator,
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
          height: 53.5,
          decoration: BoxDecoration(
            color: Colors.black26,
//              color: Color(0xFF282E41),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            border: Border.all(
              color: Color(0xFF45C2DA),
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
