import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:project_2/app/router/app_pages.dart';

import '../../home/views/home_view.dart';
import '../../nav_bar/views/nav_view.dart';

class LoginController extends GetxController{
  TextEditingController textEditingController = TextEditingController();
  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }

  // checkData(){
  //   if (textEditingController.text == ""){
  //     Get.snackbar("Input Field", "Text Field is empty");
  //   }else if(textEditingController.text.contains(" ")){
  //     Get.snackbar("Input Field", "Text field is invalid");
  //   }
  //   else{

  //     Get.to( () => HomeView());
  //   }

  // }

  checkData(){
    if (textEditingController.text == "") {
      Get.snackbar("User Input Data", "Text Field is Empty");
    }else if (textEditingController.text.contains(" ")){
      Get.snackbar("User Input Data","Text Field is invalid" );
    }else{
      Get.offAllNamed(Routes.home);
    }
  }
}
