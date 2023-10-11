import 'package:get/get.dart';
import 'package:project_2/app/modules/nav_bar/views/nav_view.dart';
import 'package:project_2/app/router/app_pages.dart';

class SplashController extends GetxController{
@override
  void onInit() {
    print("call");
    nextPage();
    super.onInit();
  }
}
nextPage(){
  Future.delayed(const Duration(seconds:5) ,
  (){
    // Get.offAllNamed(Route.navScreen);
    Get.offAllNamed(Route.navScreen);
  }
  
  );
}