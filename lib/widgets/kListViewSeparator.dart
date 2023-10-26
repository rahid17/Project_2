import 'package:flutter/material.dart';
import 'package:project_2/widgets/kText.dart';

class KListViewSeparetor extends StatelessWidget {
  const KListViewSeparetor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemCount: 20,
     separatorBuilder: (context, index) {
       return SizedBox(
        height: 10,
       );
     }, 
     itemBuilder: (context, index) {
       return InkWell(
        onTap: () {
          print("Repos. Clicked ");
        },
         child: Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.greenAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ktext(text: "Repos. name", fontWeight: FontWeight.bold, fontsize: 20,),
                  Ktext(text: "Created date: 01-01-2023"),
                  Ktext(text: "Updated on: 03-01-2023"),
                  Ktext(text: "Last Push: 05-08-2023")
                ],
              ),
              ElevatedButton(onPressed: () {
                
              }, child: Text("Public"))
            ],
          ),
         ),
       );
     },);
  }
}

