import 'package:ecom/components/cart_products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),),

          backgroundColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              onPressed: () {},
            ),


          ],

        ),

        body: Cart_products(),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text("Total",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  subtitle: Text("\$230",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),

                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Text("Check out",style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                ),
              )
            ],
          ),
        )


    );
  }
}




