import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Category(
            image_location: 'assets/Products/Laptop.jpg',
            image_caption: 'Laptop',
          ),

          Category(
            image_location: 'assets/Products/HardDrive.jpg',
            image_caption: 'Hard Drive',
          ),

          Category(
            image_location: 'assets/Products/GraphicsCard.jpg',
            image_caption: 'GraphicsCard',
          ),

          Category(
            image_location: 'assets/Products/Keyboard.jpg',
            image_caption: 'Keyboard',
          ),

          Category(
            image_location: 'assets/Products/Mac.jpg',
            image_caption: 'Mac-Book',
          ),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({super.key,
    required this.image_location,
    required this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
              width: 100.0,
              height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
