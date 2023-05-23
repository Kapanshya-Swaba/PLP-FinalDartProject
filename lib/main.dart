import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Import Horizontal_ListView
import 'package:techcloud_store/Components/Horizontal_ListView.dart';
import 'package:techcloud_store/Components/Products.dart';
import 'package:techcloud_store/Components/Pages/Cart.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildImageCarousel() {
    List<String> imagePaths = [
      "assets/images/img (1).jpg",
      "assets/images/img (2).jpg",
      "assets/images/img (3).jpg",
      "assets/images/img (4).jpg",
      "assets/images/img (5).jpg",
      "assets/images/img (6).jpg",
      "assets/images/img (7).jpg",
      "assets/images/img (8).jpg",
      "assets/images/img (9).jpg",
      "assets/images/img (10).jpg",
    ];

    return SizedBox(
      height: 200.0,
      child: CarouselSlider.builder(
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Image(
            image: AssetImage(imagePaths[index]),
            fit: BoxFit.cover,
          );
        },
        options: CarouselOptions(
          autoPlay: false,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: const Text("TechCloud Store"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cart()));
            },
            icon: const Icon(Icons.shopping_cart_sharp),
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'User1',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                "customer@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: const BoxDecoration(color: Colors.white),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.pink,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cart()));
              },
              child: const ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildImageCarousel(),

          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Categories'),
            ),
          ),
          // Horizontal list view begins here
          const HorizontalList(),

          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text('Recent Products'),
            ),
          ),

          //grid view
          const Flexible(child: Products()),
        ],
      ),
    );
  }
}
