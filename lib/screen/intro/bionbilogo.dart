import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BionbiLogo extends StatelessWidget {
  const BionbiLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/image/logoxbionbi.png')),
      ),
    );
  }
}
