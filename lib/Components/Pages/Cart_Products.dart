import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {

  @override
  Widget build(BuildContext context) {
    var Products_on_the_cart =[
      {
        "name":"Hard Drive 1TB",
        "picture":"assets/Products/HardDrive.jpg",

        "price":"950",
        "Size": "1TB",
        "Quantity":1,
      },

      {
        "name":"Mac-Book",
        "picture":"assets/Products/Mac.jpg",
        "price":"10000",
        "Size": "256GB",
        "color": "White",
        "Quantity":1,


      },

      {
        "name":"Phone Stand",
        "picture":"assets/Products/img(21).jpg",

        "price":"45",
        "color": "White",
        "Quantity":1,
      },
      {
        "name":"Patch Panel",
        "picture":"assets/Products/img(24).jpg",
        "price":"k2500",
        "color":"white",
        "Quantity": 1,
      },

    ];
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder:  (context, index){
        return Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_product_Size: Products_on_the_cart[index]["color"],
          cart_product_Quantity: Products_on_the_cart[index]["Quantity"],
          cart_product_price: Products_on_the_cart[index]["price"],
          cart_product_picture: Products_on_the_cart[index]["picture"],

        );
      });
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_Size;
  final cart_product_Quantity;
  final cart_product_color;

  const Single_cart_product(
      {Key? key,
        this.cart_product_name,
        this.cart_product_picture,
        this.cart_product_price,
        this.cart_product_Quantity,
        this.cart_product_Size,
        this.cart_product_color,})
      : super(key: key
  );

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        title: Text(cart_product_name),
        subtitle: Column(
          children: [
            //======= Size of product =======
            Row(
              children: <Widget> [
             const Padding(
               padding: EdgeInsets.all(8.0),
               child:Text("Size: "),
             ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:Text(cart_product_Size),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: Text("Color"),
                ),
                Padding(padding: EdgeInsets.all(4.0),
                child: Text(cart_product_color),),


              ],
            )
          ],
        ),
      ),
    );
  }
}
