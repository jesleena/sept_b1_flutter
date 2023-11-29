import 'package:flutter/material.dart';
import 'package:sept1_batch/passing_data_btwn_screens/dummydata.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tappedId=ModalRoute.of(context)?.settings.arguments;
    final productNew=products.firstWhere((e) => e["id"]==tappedId);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(productNew["image"]),
            Text(productNew["name"]),
            Text(productNew["description"]),
            Text("${productNew["price"]}"),
          ]

        ),
      ),
    );
  }
}
