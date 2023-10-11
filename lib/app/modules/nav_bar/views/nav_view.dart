import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/nav_bar/controllers/nav_controller.dart';

class NavView extends GetView<NavController> {
  const NavView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavController());
    return  Scaffold(
      body: Obx(() => controller.PageList[controller.index.value]),
      bottomNavigationBar: Obx(
        () =>  BottomNavigationBar(
          currentIndex: controller.index.value,
          onTap: (value) {
            controller.changeIndex(value);
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:"Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Massage"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
        ]),
      ),
    );
  }
}