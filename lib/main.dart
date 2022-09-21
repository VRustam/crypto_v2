import 'dart:async';

import 'package:crypto_v2/screen/Bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:crypto_v2/screen/home/home.dart';
import 'package:crypto_v2/screen/intro/bionbilogo.dart';
import 'package:crypto_v2/screen/intro/forget_password.dart';
import 'package:crypto_v2/screen/intro/forgetpassword_backup.dart';
import 'package:crypto_v2/screen/intro/login.dart';
import 'package:crypto_v2/screen/intro/on_Boarding.dart';
import 'package:crypto_v2/screen/intro/signUp.dart';
import 'package:crypto_v2/screen/intro/verficationcode.dart';
import 'package:crypto_v2/screen/setting/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crypto_v2/screen/setting/setting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

/// Run first apps open
void main() async {
  await GetStorage.init();
  runApp(ProviderScope(child: myApp()));
}

class myApp extends StatefulWidget {
  final Widget child;

  myApp({Key key, this.child}) : super(key: key);

  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  /// Create _themeBloc for double theme (Dark and White theme)
  ThemeBloc _themeBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _themeBloc = ThemeBloc();
  }

  @override
  Widget build(BuildContext context) {
    /// To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// StreamBuilder for themeBloc
    return StreamBuilder<ThemeData>(
      initialData: _themeBloc.initialTheme().data,
      stream: _themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp(
          title: 'Crypto Apps',
          theme: snapshot.data,
          debugShowCheckedModeBanner: false,
          // home: onBoarding(),
          // home: signUp(themeBloc: _themeBloc),

          home: SplashScreen(
            themeBloc: _themeBloc,
          ),

          /// Move splash screen to onBoarding Layout
          /// Routes
          ///
          routes: <String, WidgetBuilder>{
            "onBoarding": (BuildContext context) =>
                new onBoarding(themeBloc: _themeBloc)
          },
        );
      },
    );
  }
}

/// Component UI
class SplashScreen extends StatefulWidget {
  final box = GetStorage();
  ThemeBloc themeBloc;
  SplashScreen({this.themeBloc});
  @override
  _SplashScreenState createState() => _SplashScreenState(themeBloc);
}

/// Component UI
class _SplashScreenState extends State<SplashScreen> {
  ThemeBloc themeBloc;
  _SplashScreenState(this.themeBloc);
  @override

  /// Setting duration in splash screen
  startTime() async {
    //
    //if yapisi yoklama amaci ile yapildi;
    return new Timer(Duration(milliseconds: 3000), () {
      if (widget.box.read("token") == null) {
        NavigatorPage();
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => home()));
      }
    });
  }

  /// To navigate layout change
  void NavigatorPage() {
    Navigator.of(context).pushReplacementNamed("onBoarding");
  }

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    return BionbiLogo();
    // return BionbiLogo();
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Container(
    //     /// Set Background image in splash screen layout (Click to open code)
    //     decoration: BoxDecoration(
    //         image: DecorationImage(
    //             image: AssetImage('assets/image/splash_screen.png'),
    //             fit: BoxFit.cover)),
    //     child: Container(
    //       /// Set gradient black in image splash screen (Click to open code)
    //       decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //               colors: [
    //             Color.fromRGBO(0, 0, 0, 0.1),
    //             Color.fromRGBO(0, 0, 0, 0.1)
    //           ],
    //               begin: FractionalOffset.topCenter,
    //               end: FractionalOffset.bottomCenter)),
    //       child: Center(
    //         child: Container(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: <Widget>[
    //                   Image.asset("assets/image/logo.png", height: 35.0),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 17.0, top: 7.0),
    //                     child: Text(
    //                       "Crypto",
    //                       style: TextStyle(
    //                           fontFamily: "Sans",
    //                           color: Colors.white,
    //                           fontSize: 32.0,
    //                           fontWeight: FontWeight.w300,
    //                           letterSpacing: 3.9),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
