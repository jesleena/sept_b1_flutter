import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import '../../../model/productmodel.dart';

class ProductTile extends StatelessWidget {
  final Products product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: CachedNetworkImage(imageUrl: product.image!,fit: BoxFit.cover,),
            
            ),
          ),
          SizedBox(height: 10,),
          Text(product.title!,maxLines: 2,),
          SizedBox(height: 10,),
          Text("${product.price!}"),
          SizedBox(height: 10,),
          Text("${product.rating?.rate!}"),

        ],
      ),
    );
  }
}
