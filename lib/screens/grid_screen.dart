
import 'package:flutter/material.dart';
import 'package:gallery/screens/image_details.dart';


class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(" Image Gallery"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: List.generate(10, (index) {
                      return  GestureDetector(
                        onTap: (){
                            Navigator.push( context, MaterialPageRoute(builder: (context) => ImageDetail(
	                           image: AssetImage("assets/gallery (${index}).jpg"), index: index,))
	                        );
                        },
                        child: Container(                  
                        decoration: BoxDecoration(                            
                         image: DecorationImage(
	                      fit: BoxFit.cover,
	                        image: AssetImage("assets/gallery (${index}).jpg"),
	                          ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                    ),
                      );
                      
           },)),
        ),
      ),
    );
  }
}