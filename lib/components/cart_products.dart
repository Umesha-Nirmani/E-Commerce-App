import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {

  var Products_on_the_cart =[
    {
      "name" : "Blazer",
      "picture":"images/i.jpg",
      "price":50,
      "size":"M",
      "color":"Red",
      "quantity":1

    },
    {
      "name" : "dress",
      "picture":"images/i.jpg",
      "price":80,
      "size":"8",
      "color":"Red",
      "quantity":1,

    },


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context,index){
          return Single_cart_product(

            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size:Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture,width:70.0 ,height: 70.0,),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Size'),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child:Text(cart_prod_size,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text('Color'),
                ),
                Padding(
                  padding:EdgeInsets.all(8.0),
                  child: Text(cart_prod_color,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child:  Text("\$${cart_prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize:17.0),),
            )
          ],
        ),
        trailing: Column(


          children: [
            IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){},),
            Text('1'),
            IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){},),




          ],
        ),
      ),
    );
  }
}



