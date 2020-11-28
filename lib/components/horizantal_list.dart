import 'package:flutter/material.dart';
class   HorzantalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/H1.png',
            imag_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/H2.png',
            imag_caption: 'Frock',
          ),
          Category(
            image_location: 'images/H3.png',
            imag_caption: 'Short',
          ),
          Category(
            image_location: 'images/H3.png',
            imag_caption: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String imag_caption;

  Category({
    this.imag_caption,
    this.image_location,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(image_location,width: 100.0,height: 80.0,),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(imag_caption,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              )
          ),
        ),

      ),
    );
  }
}






