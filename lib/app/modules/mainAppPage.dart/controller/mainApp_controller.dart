import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/data/local_data.dart';

class MyAppController extends GetxController{
  RxBool theme =false.obs;
  @override
  void onInit() {
     
    super.onInit();
  }

  checkTheme() async{
    theme.value =await LocalData().getThemeData();
    Get.changeThemeMode(theme.value ? ThemeMode.dark : ThemeMode.light);
  }

  changeTheme(){
    theme.value = !theme. value;
    LocalData().setThemedata(theme.value);
    Get.changeThemeMode(theme.value ? ThemeMode.dark : ThemeMode.light);
  }

}