import 'package:crypto_v2/Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import 'package:crypto_v2/Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';
import 'package:crypto_v2/screen/intro/login.dart';
import 'package:crypto_v2/screen/setting/themes.dart';
import 'package:flutter/material.dart';
import 'package:crypto_v2/component/style.dart';

class onBoarding extends StatefulWidget {
  ThemeBloc themeBloc;
  onBoarding({this.themeBloc});
  @override
  _onBoardingState createState() => _onBoardingState(themeBloc);
}

///
/// Page View Model for on boarding
///
final pages = [
  new PageViewModel(
      pageColor: colorStyle.background,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'KOLAY ERİŞİM',
        style: txtStyle.headerStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
          'En yeni ve en meşhur coinlere hızlı \nve kolay şekilde erişin.',
          textAlign: TextAlign.center,
          style: txtStyle.descriptionStyle,
        ),
      ),
      mainImage: Image.asset(
        'assets/image/giris1@2x.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: colorStyle.background,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'GÜVENİLİR HİZMET',
        style: txtStyle.headerStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
          'Kullanıcı verileri her zaman \n üstüngüvenlik önlemleriyle şifrelenir \n ve korunur',
          textAlign: TextAlign.center,
          style: txtStyle.descriptionStyle,
        ),
      ),
      mainImage: Image.asset(
        'assets/image/giris2@2x.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
    pageColor: colorStyle.background,
    iconColor: Colors.black,
    bubbleBackgroundColor: Colors.black,
    title: Text(
      'HIZLI ALIŞ SATIŞ',
      style: txtStyle.headerStyle,
    ),
    body: Container(
      height: 250.0,
      child: Text(
        'Sistem hatasdından dolayı \npara kaybetmeyin! Coinlerinizini hızlıca \nalıp satın.',
        textAlign: TextAlign.center,
        style: txtStyle.descriptionStyle,
      ),
    ),
    mainImage: Image.asset(
      'assets/image/giris3@2x.png',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
  ),
];

class _onBoardingState extends State<onBoarding> {
  ThemeBloc _themeBloc;
  _onBoardingState(this._themeBloc);
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text(
        "Atla",
        style: txtStyle.descriptionStyle.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0),
      ),
      doneText: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF0AC0B5)),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => login()));
        },
        child: Text(
          "Hemen Başla",
          style: txtStyle.descriptionStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.0),
        ),
      ),
    );
    // onTapDoneButton: () {
    //
    // },
  }
}
