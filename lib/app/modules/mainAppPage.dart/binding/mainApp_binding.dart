import 'package:get/get.dart';
import 'package:project_2/app/modules/mainAppPage.dart/controller/mainApp_controller.dart';

class MyAppBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MyAppController>(() => MyAppController());
  }

}