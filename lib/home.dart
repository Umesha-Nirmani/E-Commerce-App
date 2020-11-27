import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecom/pages/cart.dart';

import 'package:flutter/material.dart';


import 'components/horizantal_list.dart';
import 'components/products.dart';
import 'package:ecom/pages/login.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('ShopApp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),),

        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.white,),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Cart() ));
            },
          ),

        ],

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(

              accountName:Text('Vimarshana Bandara') ,
              accountEmail:Text('vimarshanagayathri@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,size: 30.0,),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.red
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.red,),
              ),
              onTap: () {},
            ),

            InkWell(
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.red,),
              ),
              onTap: () {},
            ),

            InkWell(
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
              ),
              onTap: () {},
            ),

            InkWell(
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.red,),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Cart() ));
              },
            ),
            InkWell(
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
              onTap: () {},
            ),

            Divider(),

            InkWell(
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
              onTap: () {},
            ),

            InkWell(
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green,),
              ),
              onTap: () {},
            ),
          ],
        ),

      ),
      body: ListView(
        children: [
          ImageCarousel(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          HorzantalList(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Recent Products',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
          ),
          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )

        ],
      ),

    );
  }

  Widget ImageCarousel(){

    return Container(
      height: 230.0,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('images/i1.jpg'),
          AssetImage('images/i2.jpg'),
          AssetImage('images/i4.jpg'),
          AssetImage('images/i3.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        dotColor: Colors.red,
        indicatorBgPadding: 7.0,


      ),

    );


  }


}
