import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/home/controllers/home_controllers.dart';
import 'package:project_2/app/modules/mainAppPage.dart/controller/mainApp_controller.dart';
import 'package:project_2/utils/img_url.dart';
import 'package:project_2/widgets/kAppImage.dart';
import '../../../../widgets/kAppBar.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyAppController());
    return SafeArea(
      child: Scaffold(
        appBar: KAppBar(title: "Home",),
        body: Obx(
          ()=>controller.isLoading.value ? Center(
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                  SizedBox(
                    width : Get.width/ 10,
                    height: Get.width /10,
                    child: CircularProgressIndicator(),
                  ),SizedBox(
                    height: Get.width/5,
                  )
                ]
                    ),
            ),
          ):
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      KAppImage(imageUrl: KLoadingImg)
                    ],
                  )
                ],
              ),
            
            ),
          )
        ),
    ));
  }
}

