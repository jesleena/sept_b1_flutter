import 'package:flutter/material.dart';
import 'package:sept1_batch/gridview/gridview2.dart';
import 'package:sept1_batch/passing_data_btwn_screens/details.dart';
import 'package:sept1_batch/passing_data_btwn_screens/dummydata.dart';
void main(){
  runApp(MaterialApp(
    home: ProductList(),
    debugShowCheckedModeBanner: false,
    routes: {
    "details":(context)=>Details(),
     // "cart":(context)=>Gridview2()
    },
  ));
}
class ProductList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product List"),),
      body: ListView(
        // e single map
        children: products.map((e) => ListTile(leading: Image.asset(e["image"]),
        onTap: ()=>  Navigator.pushNamed(context,"details",arguments: e["id"]),)).toList()
      ),
    );
  }

  // void gotodetails(BuildContext context, id) {
  //   Navigator.pushNamed(context,"details",arguments: id);
  // }
}
