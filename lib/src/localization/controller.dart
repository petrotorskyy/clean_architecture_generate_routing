import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleCont extends GetxController {
  Locale locale = const Locale('en', "US");

  //Locale locale = const Locale('uk', "UK");

  updateLocale(Locale a) {
    locale = a;
    update();
  }
}
