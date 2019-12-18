import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Manually created packages
import 'package:my_shop_app/utils/horizontal_listview.dart';
import 'package:my_shop_app/utils/products.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        //dotBgColor: ,
        indicatorBgPadding: 3.0,
        dotColor: Colors.white,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),


      // ================ DRAWER ============

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Azzam Jafri'),
                accountEmail: Text('azzamjafri98@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
            ),

            //   *** BODY PF DRAWER ***

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.redAccent,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.redAccent,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.redAccent,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.redAccent,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.redAccent,),
              ),
            ),

            Divider(),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.black,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.black,),
              ),
            ),

          ],
        ),
      ),

      // *** MAIN BODY ***
      body: new ListView(
        children: <Widget>[

          // *** IMAGE CAROUSEL BEGINS HERE
          image_carousel,

          // *** PADDING WIDGET ***
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories', style: new TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),),

          // *** HORIZONTAL LIST VIEW BEGINS HERE ***
          HorizontalList(),

          // *** PADDING WIDGET ***
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products', style: new TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          ),

          // *** GRID VIEW ***
          Container(
            height: 320.0,
            child: Products(),
          )

        ],
      ),
    );
  }
}
