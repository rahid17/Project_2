import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/home/controllers/home_controllers.dart';
import 'package:project_2/widgets/kAppImage.dart';
import 'package:project_2/widgets/kText.dart';
import '../../../../widgets/kAppBar.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: KAppBar(title: "Home",),
      body: Obx(
        ()=>controller.isLoading.value ? Center(
          child: Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 20,
            child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                  SizedBox(
                    width : Get.width/ 5,
                    height: Get.width /5,
                    child: CircularProgressIndicator(),
                  ),
                  SizedBox(
                    height: Get.width/5,
                  ),
                 ElevatedButton.icon(onPressed: () {
                   
                 }, 
                 icon: Icon(Icons.cancel), 
                 label: Text("Cancel"))
                ]
                    ),
            ),
          ),
        )
        :
        Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    KAppImage(imageUrl: "https://images.unsplash.com/photo-1495344517868-8ebaf0a2044a?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2VhcmNofGVufDB8fDB8fHww"),
                    
                    Column(
                      children: [
                        Ktext(text: "Rahid Uddin Ahmed",
                        fontWeight: FontWeight.bold,
                        fontsize: 20,),
                        Ktext(text: "rahid17")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Ktext(text: "This is Rahid Uddin Ahmed , Flutter Developer at Universe IT institute "),
                SizedBox(height: 80,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {
                      print("Sort button pressed ");
                      
                    }, child: Text("Sort^", style: TextStyle(fontSize: 18),)),
                    
                    Ktext(text: "Repos. List", fontsize: 18),

                    Obx(
                      () =>  IconButton(onPressed: () {
                        controller.gridview.obs;
                        
                      }, icon: Icon(Icons.grid_view)),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 100*10,

                  child: GridView.builder(
                    itemCount: 40,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20, 
                      mainAxisSpacing: 20, 
                      crossAxisCount: 2), 
                      itemBuilder: (context, index) {
                      
                       return Container(
                        width: 50,
                        color: Colors.greenAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Ktext(
                            text: "Repo.Name",
                            fontWeight: FontWeight.bold,
                            fontsize: 20,),
                            SizedBox(height: 20,),
                            Ktext(text: "Created:01-01-2023"),
                            SizedBox(height: 10),
                            Ktext(text: "Updated on:02-01-2023")
                          ],
                        ),
                       );
                      },
                      
                      ),
                )
              ],
            ),
          ),
        
        )
      ),
    );
  }
}

