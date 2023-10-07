import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:project_2/app/modules/nav_bar/controllers/nav_controller.dart';

class NavBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NavController>(() => NavController());
  }
}