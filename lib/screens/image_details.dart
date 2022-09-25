import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageDetail extends StatefulWidget {
  AssetImage image;
  int index;
  ImageDetail({required this.image,required this.index});
  @override
  State<StatefulWidget> createState() {
    return _ImageDetailState();
  }
}

class _ImageDetailState extends State<ImageDetail> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }



@override
  Widget build(BuildContext context) {
  final List<Widget> imageSliders =  List.generate(10, (index)  {
  

  
 return  Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 200,),
            Center(child: 
          
              Image(image: AssetImage("assets/image (${index
              }).jpg"),)),
             ],
              )),
        );
  })
    .toList();
  

    return Scaffold(
        appBar: AppBar(title: Text("Image ")),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CarouselSlider(
              
                  items: imageSliders,
                  options: CarouselOptions(enlargeCenterPage: true, height: 800,initialPage:widget.index ),
                  carouselController: _controller,
                ),
              ),
            ],
          ),
        ));
  }
}