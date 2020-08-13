import 'package:flutter/material.dart';



class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            img_loc: 'images/cats/tshirt.png',
            img_cap: 'T-Shirt',
          ),
          Category(
            img_loc: 'images/cats/accessories.png',
            img_cap: 'Accessories',
          ),
          Category(
            img_loc: 'images/cats/dress.png',
            img_cap: 'Dress',
          ),
          Category(
            img_loc: 'images/cats/formal.png',
            img_cap: 'Shirt',
          ),
          Category(
            img_loc: 'images/cats/shoe.png',
            img_cap: 'Shoes',
          ),
          Category(
            img_loc: 'images/cats/jeans.png',
            img_cap: 'Jeans',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String img_loc;
  final String img_cap;

  Category({this.img_loc, this.img_cap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              img_loc,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(img_cap),
            ),
          ),
        ),
      ),
    );
  }
}
