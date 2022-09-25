
import 'package:flutter/material.dart';
import 'package:gallery/screens/image_details.dart';


class GridScreen extends StatefulWidget {
   GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
List images = List.generate(10, (index) => index);
bool isSort = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(" Image Gallery"),
        actions: [
           IconButton(onPressed: (){
setState(() {
  isSort = false;
});
           
          }, icon:Icon( Icons.refresh)),
          IconButton(onPressed: (){
setState(() {
  isSort = true;
});
          }, icon:Icon( Icons.sort))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,

         isSort? images.reversed.map((e) {

                      return  GestureDetector(
                        onTap: (){
          

                            Navigator.push( context, MaterialPageRoute(builder: (context) => ImageDetail(
	                           image: AssetImage("assets/image (${e}).jpg"), index: e))
	                        );
                        },
                        child: Container(                  
                        decoration: BoxDecoration(                            
                         image: DecorationImage(
	                      fit: BoxFit.cover,
	                        image: AssetImage("assets/image (${e}).jpg"),
	                          ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                            
                            ),
                          
                          
                    ),
                  
                    
                      );
                      
           },
           ).toList():     images.map((e) {
                      return  GestureDetector(
                        onTap: (){
                            Navigator.push( context, MaterialPageRoute(builder: (context) => ImageDetail(
	                           image: AssetImage("assets/image (${e}).jpg"), index:e,))
	                        );
                        },
                        child: Container(                  
                        decoration: BoxDecoration(                            
                         image: DecorationImage(
	                      fit: BoxFit.cover,
	                        image: AssetImage("assets/image (${e}).jpg"),
	                          ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)

                            ),      
                    ),
                      );          
           },
           ).toList()
           
           ),
        ),
      ),
    );
  }
}
