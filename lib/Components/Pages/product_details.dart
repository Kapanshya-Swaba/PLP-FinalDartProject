import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  const ProductDetails(
      {Key? key,
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture})
      : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: const Text("TechCloud_Store"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_sharp),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_old_price}",
                        style: const TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_new_price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //======The first buttons ======

          Row(
            children: [
              // ====== the Color button =======
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(context:
                  context,
                      builder:(context) {
                        return AlertDialog(
                          title: const Text("Size"),
                          content: const Text("Choose the size"),
                          actions: <Widget>[
                            MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: const Text("Close"),)
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: const <Widget>[
                    Expanded(child: Text("Size")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),

              // ====== the size button =======
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(context:
                      context,
                      builder:(context) {
                    return AlertDialog(
                      title: const Text("Size"),
                      content: const Text("Choose the size"),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: const Text("Close"),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: const <Widget> [
                    Expanded(child: Text("Color")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),

              // ====== the Quantity button =======
              Expanded(
                  child: MaterialButton(
                  onPressed: () {
                    showDialog(context:
                    context,
                        builder:(context) {
                          return AlertDialog(
                            title: const Text("Quantity"),
                            content: const Text("Choose the Quantity"),
                            actions: <Widget>[
                              MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: const Text("Close"),)
                            ],
                          );
                        });
                  },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: const <Widget> [
                    Expanded(child: Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
            ],
          ),


          Row(
            children: <Widget>[
              //========Buy Button ======
              Expanded(
                  child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: const Text("Buy Now!"),
                  ),
              ),

              IconButton(icon: const Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: () { },),
              IconButton(icon: const Icon(Icons.favorite_border),color: Colors.red ,onPressed: () {  },)

            ],

          ),
          
          const Divider(),
          
          const ListTile(
            title: Text("Product Details"),
            subtitle: Text("Just Buy Bro!"),
          ),
          const Divider(),
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Name",style: TextStyle(color: Colors.grey),),),
              Padding(padding: const EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),),
            ],
          ),

          Row(
            children: const <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Brand",style: TextStyle(color: Colors.grey),),)
            ],
          ),

          Row(
            children: const <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Condition",style: TextStyle(color: Colors.grey),),)
            ],
          ),

        ],
      ),
    );
  }
}
