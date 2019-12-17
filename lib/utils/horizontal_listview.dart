import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/Bakery.png',
            image_caption: 'Bakery',
          ),

          Category(
            image_location: 'images/cats/Beverages.png',
            image_caption: 'Beverages',
          ),
          Category(
            image_location: 'images/cats/Cleaning.png',
            image_caption: 'Cleaning and Household',
          ),

          Category(
            image_location: 'images/cats/foodgrains.png',
            image_caption: 'Foodgrains and Oils',
          ),

          Category(
            image_location: 'images/cats/Fruits.png',
            image_caption: 'Fruits and Vegetables',
          ),

          Category(
            image_location: 'images/cats/snacks.png',
            image_caption: 'Snacks',
          ),

        ],
      ),
    );
  }
}


class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 110.0,
          //height: 140.0,
          child: ListTile(

            title: Image.asset(image_location, width: 100.0, height: 60.0,),
            //subtitle: Text(image_caption),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child:Text(image_caption, style: new TextStyle(fontSize: 12.0)) ,
            ),
          ),
        ),
      ),
    );
  }
}

