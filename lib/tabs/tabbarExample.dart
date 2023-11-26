import 'package:flutter/material.dart';
import 'package:sept1_batch/gridview/gridview1.dart';
import 'package:sept1_batch/list/list_listgenerate.dart';

void main() {
  runApp(MaterialApp(
    home: TabbarExample(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class TabbarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: TabBar(tabs: [
            Text("chat"),
            Text("updates"),
            Text("call")
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("chat")),
          Gridview1(),
          list1_generate()
        ])
      ),
    );
  }
}
