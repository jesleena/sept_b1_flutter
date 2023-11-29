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
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: TabBar(tabs: [
              Expanded(
                flex: 200,
                //width: 20.0,
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Tab(
                      icon: Icon(Icons.group),
                    )),
                //const Icon(Icons.group),
              ),
              Container(width: 120, child: Tab(text: '  chat')),
              // child: Text("chat")),
              Container(width: 120, child: Tab(text: 'updates')),
              //child: Text("updates")),
              Container(width: 120, child: Tab(text: 'call')),
              // child: Text("call"))
            ]),
          ),
          body: TabBarView(children: [
            Center(child: Text("chat")),
            Gridview1(),
            list1_generate(),
            Gridview1(),
          ])),
    );
  }
}
