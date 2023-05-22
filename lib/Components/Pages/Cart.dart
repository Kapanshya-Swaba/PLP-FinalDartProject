import 'package:flutter/material.dart';

import 'package:techcloud_store/Components/Pages/Cart_Products.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => CartState();
}

class CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: const Text("Shopping Cart"),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),

        ],
      ),

      body: const Cart_products(),

      bottomNavigationBar:
      Container(color: Colors.white,
      child: Row(
        children: <Widget> [
          const Expanded(child: ListTile(
            title: Text("Total:"),
            subtitle: Text("\$230"),
          )),
          Expanded(
              child: MaterialButton(
                onPressed: (){},

              child: const Text("Check out", style: TextStyle(color: Colors.white),),
              color:Colors.red,
              ),
          )
        ],
      ),),

    );
  }
}