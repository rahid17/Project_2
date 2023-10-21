import 'package:get/get.dart';

class HomeController extends GetxController{
  @override
  void onInit() {
    isLoading.value=false;
    gridview.value= false;
    super.onInit();
  }

  RxBool isLoading =false.obs;
  RxBool gridview = false.obs;

}