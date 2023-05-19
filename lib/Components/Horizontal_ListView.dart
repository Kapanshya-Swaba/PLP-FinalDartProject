import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Category(
            image_location: 'assets/Products/Monitor.jpg',
            image_caption: 'Monitor',
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
            image_location: 'assets/Products/Mac-Book (1).jpg',
            image_caption: 'Mac-Book',
          ),

          Category(
            image_location:'assets/Products/MotherBoard.png' ,
            image_caption:"Mother Board"
            ),
          Category(
            image_location: 'assets/Products/Ram.jpg',
            image_caption: "8GB Ram")

    


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
