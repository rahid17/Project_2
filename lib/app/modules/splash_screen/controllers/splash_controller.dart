import 'package:get/get.dart';
import 'package:project_2/app/modules/nav_bar/views/nav_view.dart';
import 'package:project_2/data/user_data.dart';

class SplashController extends GetxController{
  var data = UserData();
@override
  void onInit() {
    print("call");
    nextPage();
    super.onInit();
  }
}
nextPage() async {
  Future.delayed(const Duration(seconds:5) ,
  (){
    // Get.offAllNamed(Route.navScreen);
    // Get.offAllNamed(Route.navScreen);
  }
  );
  var userInfo = await data.getUser; 
}

