import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {

  var products_in_cart = [
    {
      "name": "Blazer 1",
      "picture": "images/products/blazer1.jpeg",
      "price": 100,
      "size": 'M',
      "color":"Red",
      "qty": 2,
    },
    {
      "name": "Dress 1",
      "picture": "images/products/dress1.jpeg",
      "price": 100,
      "size": 'M',
      "color":"Red",
      "qty": 2,
    }

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_in_cart.length,
        itemBuilder: (context, index) {
      return Single_product_cart(
        c_p_name: products_in_cart[index]['name'],
        c_p_color: products_in_cart[index]['color'],
        c_p_price: products_in_cart[index]['price'],
        c_p_picture: products_in_cart[index]['picture'],
        c_p_qty: products_in_cart[index]['qty'],
        c_p_size: products_in_cart[index]['size'],
      );
    });
  }
}

class Single_product_cart extends StatelessWidget {

  final c_p_name;
  final c_p_color;
  final c_p_price;
  final c_p_picture;
  final c_p_qty;
  final c_p_size;

  Single_product_cart({
    this.c_p_name, this.c_p_color, this.c_p_price, this.c_p_picture, this.c_p_qty, this.c_p_size
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(c_p_picture,),
        title: Text(c_p_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(c_p_size),
                ),

              ],
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){},),
            //Text(c_p_qty.toString()),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){},),
          ],
        ),
      )
    );
  }
}

