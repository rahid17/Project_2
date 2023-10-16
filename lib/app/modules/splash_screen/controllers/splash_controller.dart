import 'package:get/get.dart';
import '../../../../data/user_data.dart';
import '../../../router/app_pages.dart';


class SplashController extends GetxController{
  var data = UserData();

@override

  void onInit() {
    print("call");
    nextPage();
    super.onInit();
  }

  nextPage() async {
  await Future.delayed(
    const Duration(seconds:5) ,(){
      Get.offAllNamed(Routes.login);
    
  } );


  // var userInfo =await data.getUser(); 

  // if (userInfo! = null)
}
}


