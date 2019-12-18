import 'package:flutter/material.dart';
import 'package:my_shop_app/main.dart';


class ProductDetails extends StatefulWidget {

  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
   this.product_details_name,
   this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HomePage()));
          },
            child: Text('ShopApp')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), 
              onPressed: (){}
              ),


         // new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
           //   onPressed: (){}
             // )


        ],

      ),

      // *** BODY ***
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            //color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_details_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Rs.${widget.product_details_old_price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey
                        ),
                        ),
                      ),
                      Expanded(
                        child: new Text("Rs.${widget.product_details_new_price}",
                        style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ######### The First Buttons ########
          Row(
            children: <Widget>[

              // **** The size Button *****

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("DETAILS HERE"),
                      content: new Text("contents..."),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("close", style: TextStyle(color: Colors.blue),),
                        )
                      ],
                    );
                  });
                },
                color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Quantity"),
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

          // ######## Second Button #########

          Row(
            children: <Widget>[
              // ========== Buy Now ================
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.4,
                  //height: 30.0,
                  //minWidth: 30.0,
                  child: Text("Buy now"),
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){})
            ],
          ),
          Divider(),
        // =========== Product Details ==============
          new ListTile(
            title: new Text("Product Details"),
            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed convallis felis, at mattis purus. Duis pulvinar nunc ac libero auctor, eget malesuada mi rutrum. Donec nec dictum nibh, aliquet mattis sapien. Praesent ullamcorper rhoncus quam, pretium placerat risus venenatis sit amet. Phasellus augue nisi, malesuada vel aliquet sed, porta et enim. Curabitur sollicitudin facilisis lacus, sed semper felis. Ut hendrerit sagittis diam, feugiat pellentesque mauris ultricies quis. Donec quis arcu ut nisl pulvinar accumsan. Nunc finibus, lacus a feugiat vehicula, elit augue fermentum ipsum, vestibulum gravida ante elit eget magna. Aenean non sollicitudin elit, ac commodo orci. Nam rutrum, diam non convallis laoreet, elit quam porta nulla, sit amet accumsan lectus augue a risus. Cras tincidunt est sit amet magna vestibulum, quis mattis erat posuere. Ut pulvinar nec nisl at venenatis. "),
          ),

          Divider(),
    // ===========  Product Name ==========
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product Name", style: TextStyle(color: Colors.grey),),),

              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_details_name),)

            ],
          ),
// ========== product brand =================
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey),),),

              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Brand X"),)

            ],
          ),
// ================ product conditions =========
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),),

            ],
          ),

          // *********** SIMILAR PRODUCT SECTION **********
          
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products", style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
          ),
          new Container(
            height: 340.0,
            child: Similar_Products(),
          )
        ],
      ),
    );
  }
}





// ######################  SIMILAR PRODUCTS ##########################################



class Similar_Products extends StatefulWidget {
  @override
  _Similar_ProductsState createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
  var product_list = [
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 12,
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
          return Similar_Single_prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}


class Similar_Single_prod extends StatelessWidget {

  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Similar_Single_prod({
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


