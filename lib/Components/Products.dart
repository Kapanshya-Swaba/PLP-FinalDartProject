import 'package:flutter/material.dart';
import 'package:techcloud_store/Components/Pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list =[
    {
      "name":"Hard Drive 1TB",
      "picture":"assets/Products/HardDrive.jpg",
      "old_price":"1500",
      "price":"950",
    },

    {
      "name":"Mac-Book",
      "picture":"assets/Products/Mac.jpg",
      "old_price":"14000",
      "price":"10000",


    },

    {
      "name":"Phone Stand",
      "picture":"assets/Products/Stand.jpg",
      "old_price":"90",
      "price":"45",     
    },
    {
      "name":"Patch Panel",
      "picture":"assets/Products/Patch Panel.jpg",
      "old_price":"3000",
      "price":"2500",
    },
    {
      "name":"Seagate Hard Drive 4TeraByte",
      "picture":"assets/Products/HardDrive4TB.jpg",
      "old_price":"4000",
      "price":"3500",
    },
    {
      "name":"Logic Combo.",
      "picture":"assets/Products/Keyboard+Mouse.jpg",
      "old_price":"1500",
      "price":"1100",
    },
    {
      "name":"Ryzen CPU",
      "picture":"assets/Products/CPU.jpg",
      "old_price":"3800",
      "price":"2200",
    },





  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder:(BuildContext context,int index)
        {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_Product(
              product_Name: products_list[index]['name'],
              product_Picture: products_list[index]['picture'],
              product_Old_price: products_list[index]['old_price'],
              product_Price: products_list[index]['price'],

            ),
          );
        });
  }
}
class Single_Product extends StatelessWidget {
  final product_Name;
  final product_Picture;
  final product_Old_price;
  final product_Price;

  const Single_Product({
    Key? key,
    this.product_Name,
    this.product_Picture,
    this.product_Old_price,
    this.product_Price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace Placeholder with the actual content widget
    return Card(
      child: Hero(
        tag: product_Name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(

              //Passing value to the values of the product detail page
              MaterialPageRoute(builder: (context) =>  ProductDetails(
                product_detail_name: product_Name,
                product_detail_new_price: product_Price,
                product_detail_old_price: product_Old_price,
                product_detail_picture: product_Picture,
              )),
            ),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(product_Name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("\$$product_Price",style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w800),
                ),
                subtitle: Text("\$$product_Old_price",style: const TextStyle(color: Colors.red,fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough),
              ),
            ),
          ), child: Image.asset(product_Picture,fit: BoxFit.cover),),
        ),
      ),
      ),);
  }
}


