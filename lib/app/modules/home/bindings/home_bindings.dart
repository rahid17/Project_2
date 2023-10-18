import 'package:get/get.dart';
import 'package:project_2/app/modules/home/controllers/home_controllers.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}