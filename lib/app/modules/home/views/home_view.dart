import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/home/controllers/home_controllers.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        
          title: Text("Home"),
          actions: [
            IconButton(onPressed: () {
              
            }, icon: Icon(Icons.dark_mode)),
            SizedBox(width: 10,)
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 600,),
                Text("Home View ",style: TextStyle(fontSize: 40),),
                SizedBox(height: 600,)
            ]),
          ),
        ),
    
      ),
    );
  }
}

