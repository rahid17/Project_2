import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/mainAppPage.dart/controller/mainApp_controller.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget{
  const KAppBar({
    super.key,
    required this.title,
    
  });

  
final String title;
  @override
  Widget build(BuildContext context) {
    final controller =Get.put(MyAppController());
    return AppBar(
    
      title: Text(title),
      automaticallyImplyLeading: false,
      actions: [
        Obx(()=> IconButton(onPressed: () {   
          controller.changeTheme();
          }, icon:
          controller.theme.value
          ? Icon(Icons.light_mode) 
          : Icon(Icons.dark_mode)),
        ),
        SizedBox(width: 10,)
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}

