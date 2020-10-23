import 'package:flutter/material.dart';


import '../home.dart';


class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,

  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0.0,
        title:InkWell(

          child:  Text('ShopApp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: () {},
          ),

        ],

      ),

      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text("\$${widget.product_detail_old_price}",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20.0)),
                      ),
                      Expanded(
                        child: Text("\$${widget.product_detail_new_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){

                    showDialog(context: context,builder: (context){
                      return AlertDialog(
                        title: Text('Size'),
                        content: Text('Choose the size'),
                        actions: [
                          MaterialButton(

                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close",style: TextStyle(color: Colors.blue,fontSize: 18.0,fontWeight: FontWeight.bold),),
                          )
                        ],
                      );
                    });


                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,builder: (context){
                      return AlertDialog(
                        title: Text('Color'),
                        content: Text('Choose the color'),
                        actions: [
                          MaterialButton(

                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close",style: TextStyle(color: Colors.blue,fontSize: 18.0,fontWeight: FontWeight.bold),),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,builder: (context){
                      return AlertDialog(
                        title: Text('Quantity'),
                        content: Text('Choose the quantity'),
                        actions: [
                          MaterialButton(

                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close",style: TextStyle(color: Colors.blue,fontSize: 18.0,fontWeight: FontWeight.bold),),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart,color: Colors.red,),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border,color: Colors.red,),
                onPressed: () {},
              )
            ],
          ),
          Divider(color: Colors.red,),
          ListTile(
            title: Text('Product details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
            subtitle: Text('hello world A system is an interrelated set of components used within a business unit working together for some purpose.'
                'Takes input from outside, processes it, and sends the resulting'
                'output back to its environment interaction between the'),
          ),
          Divider(color: Colors.red,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product name',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product brand',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("brand X"),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product condition',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Condition X"),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Similar Products',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
          ),
          Container(
            height: 360.0,
            child: Similar_products(),
          )

        ],
      ),

    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list =[
    {
      "name" : "Blazer",
      "picture":"images/i.jpg",
      "old price":100,
      "price":50
    },
    {
      "name" : "dress",
      "picture":"images/i.jpg",
      "old price":100,
      "price":50
    },
    {
      "name" : "Frock",
      "picture":"images/i.jpg",
      "old price":100,
      "price":50
    },
    {
      "name" : "Denim",
      "picture":"images/i.jpg",
      "old price":100,
      "price":50
    },



  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: product_list.length,
      itemBuilder: (BuildContext context , int index){
        return Similar_single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old price'],
          prod_price: product_list[index]['price'],

        )

        ;
      },
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,


  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child:Material(
            child: InkWell(
              onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price,
                product_detail_picture: prod_picture,

              ))),


              child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                        ),
                        Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                      ],
                    )
                ),
                child: Image.asset(prod_picture,fit: BoxFit.cover,),

              ),
            ),
          )
      ),

    );
  }
}





