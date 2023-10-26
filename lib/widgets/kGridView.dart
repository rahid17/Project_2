import 'package:flutter/material.dart';
import 'package:project_2/widgets/kText.dart';

class KGridViewBuilder extends StatelessWidget {
  const KGridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
        
        );
  }
}



