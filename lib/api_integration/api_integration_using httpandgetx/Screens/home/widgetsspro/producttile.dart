import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../model/productmodells.dart';

class producttile extends StatelessWidget {
  final Productmodel product;
  producttile( this.product);



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: CachedNetworkImage(imageUrl: product.image!,
              fit: BoxFit.cover,

            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          Text("${product.rating?.rate!}")
        ],
      ),
    );
  }
}
