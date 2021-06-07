import 'package:flutter/material.dart';
import 'package:n1/models/product.dart';
import 'package:n1/provider/products.dart';
import 'package:n1/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                "assets/imgs/logo.jpg",
                fit: BoxFit.cover,
                width: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Text("Ofertas do dia"),
            ],
          ),
        ),
        body: ListView.separated(
            itemBuilder: builder,
            separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 5,
            );
            },
            itemCount: listProducts.length,
        ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Product _product = listProducts.elementAt(index);
    return Container(
      padding: EdgeInsets.fromLTRB(40, 20, 10, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
            _product.image,
            width: 135,
            fit: BoxFit.cover,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_product.name, style: TextStyle(fontSize: 21,
                ),
                ),
                Text(_product.description, style: TextStyle(fontSize: 16, height: 2
                ),
                ),
                Text("R\$ " + _product.price, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, height: 2, color: blueTheme.shade500
                ),
                ),
                Text("R\$ " + _product.priceDescription, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, height: 1, color: blueTheme.shade400
                ),
                ),
              ],
            ),
            ],
          ),
          Container(
            width: 80,
            padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: IconButton(
                  onPressed: () {
                    setState(() {
                      _product.isFavorite = !_product.isFavorite;
                    });
                  },
                  icon: Icon((_product.isFavorite)
                      ? Icons.favorite
                      : Icons.favorite_border),
                      color: Color(0xffdc45a3),
              ),
          )
        ],
      ),
    );
  }
}
