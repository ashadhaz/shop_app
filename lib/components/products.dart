import 'package:flutter/material.dart';
import 'package:shopapp_tut/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer 1",
      "picture": "images/products/blazer1.jpeg",
      "oldprice": 120,
      "price": 100
    },
    {
      "name": "Blazer 2",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 120,
      "price": 100
    },
    {
      "name": "Blazer 3",
      "picture": "images/products/dress1.jpeg",
      "oldprice": 120,
      "price": 100
    },
    {
      "name": "Hills 4",
      "picture": "images/products/blazer1.jpeg",
      "oldprice": 120,
      "price": 100
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: product_list.length,
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          old_price: product_list[index]['oldprice'],
          price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final old_price;
  final price;

  Single_prod({this.prod_name, this.prod_picture, this.old_price, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProductDetails(
                    prod_name: prod_name,
                    prod_picture: prod_picture,
                    prod_new_price: price,
                    prod_old_price: old_price,
              ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text("\$$price",),
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
