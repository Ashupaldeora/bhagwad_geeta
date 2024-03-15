import 'package:flutter/cupertino.dart';

Container geetaLogoContainer() {
  return Container(
    margin: EdgeInsets.only(top: 80),
    width: 180,
    height: 140,
    child: Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.cover,
    ),
  );
}

Container bgImage() {
  return Container(
    height: 400,
    width: double.maxFinite,
    child: Image.asset(
      'assets/images/home bg.png',
      fit: BoxFit.cover,
    ),
  );
}
