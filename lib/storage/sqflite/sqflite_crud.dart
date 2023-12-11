import 'package:flutter/material.dart';
import 'package:sept1_batch/storage/sqflite/dboperations.dart';
void main(){
  runApp(MaterialApp(home: SqfliteCrud(),
  debugShowCheckedModeBanner: false,));

}
class SqfliteCrud extends StatefulWidget {
  @override
  State<SqfliteCrud> createState() => _SqfliteCrudState();
}


class _SqfliteCrudState extends State<SqfliteCrud> {
  final name_ctrl=TextEditingController();
  final phone_ctrl=TextEditingController();
  List<Map<String,dynamic>> contacts=[];// to store data retrived from db
  var isloading=true;
  @override
  void initState() { //to show contacts at starting
   loadData();// to get data from db
    super.initState();
  }

  void loadData() async{
    final data=await SQLHelper.readData();
    setState(() {
      contacts=data;
      isloading=false;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showsheet(null),
        child: Icon(Icons.add),
      ),


      body: isloading?Center(child: const Text("No data")):ListView.builder(
        itemCount: contacts.length,
          itemBuilder: (context,index){
          return Card(child: ListTile(
            title: Text(contacts[index]['name']),
            subtitle:Text(contacts[index]['phone']),
           trailing: Wrap(children: [
             IconButton(onPressed:() {}, icon: Icon(Icons.edit)),
             IconButton(onPressed:() {}, icon: Icon(Icons.delete)),
           ],),
          ),);
          }),
    );
  }

  showsheet(int? id) {

    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context, builder: (context) {
      return Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom+50
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller:name_ctrl ,
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextField(
              controller:phone_ctrl,
              decoration: InputDecoration(hintText: "Phone"),
            ),
            ElevatedButton(onPressed: () async {
              if (id == null) {  //to create contact
                 await create_contact();
              }
              else if (id != null) { //to update contact
                // await update_contact();
              }
            }, child: Text(id == null ? "create " : "update"))
          ],
        ),
      );
    });
  }

 Future<void> create_contact() async {
    await SQLHelper.createContact(name_ctrl.text,phone_ctrl.text);
    name_ctrl.text='';
    phone_ctrl.text='';
    Navigator.pop(context);
    loadData();
  }


}
