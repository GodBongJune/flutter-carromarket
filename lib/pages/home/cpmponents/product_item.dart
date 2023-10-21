import 'package:flutter/material.dart';
import 'package:flutter_carrot/model/product.dart';
import 'package:flutter_carrot/pages/home/cpmponents/product_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),
          ProductDetail(product: product)
        ],
      ),
    );
  }
}
