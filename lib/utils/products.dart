import 'package:flutter/material.dart';

// MANUALLY CREATED PACKAGES
import 'package:my_shop_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list = [
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 12,
    },
    {
      "name":"Dress",
      "picture":"images/products/dress1.jpeg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name":"Heels",
      "picture":"images/products/hills1.jpeg",
      "old_price": 400,
      "price": 340,
    },
    {
      "name":"Pants",
      "picture":"images/products/pants1.jpg",
      "old_price": 981,
      "price": 432,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}


class Single_prod extends StatelessWidget {

  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_prod({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text(product_name),
        child: Material(
          child: InkWell(onTap: ()=> Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (context)=> new ProductDetails(
                // *** Passing products details to the page ! ***
                product_details_name: product_name,
                product_details_new_price: product_price,
                product_details_old_price: product_old_price,
                product_details_picture: product_picture,

              ),
            )
          ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "Rs. $product_price",
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "Rs. $product_old_price",
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(product_picture,
              fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
