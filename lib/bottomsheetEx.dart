import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomSheetEx(),
  ));
}

class BottomSheetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onDoubleTap: () {
              showsheet(context);
            },
            child: Image.asset("assets/images/pic5.jpg")),
      ),
    );
  }
}

void showsheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.share),
              trailing: Text("share"),
            ),
            ListTile(
              leading: Icon(Icons.copy),
              trailing: Text("copy"),
            )
          ],
        );
      });
}
