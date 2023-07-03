
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Tanoy Kumar",
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  dynamic contactItems = [
    {"Name":"Tanoy Kumar Rajbangshi","Email":"engtanoy@gmail.com","Phone Number":01914980970},
    {"Name":"mostak Hossain","Email":"mostakossin@gmail.com","Phone Number":019370767667},
    {"Name":"jamal Miah","Email":"tanoyk@gmail.com","Phone Number":0171467778879},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact List"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 5,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        itemCount: contactItems.length,
        itemBuilder: (context,index){
          return ListTile(
            onTap: (){
              showTasksItemBottomSheet(index);
            },
            title: Text(contactItems[index]['Name']),
          );

        },
      ),

    );
  }
  void showTasksItemBottomSheet(int index){
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child:  Text("Contract Details",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Text("Name:${contactItems[index]['Name']}"),
            Text("Email:${contactItems[index]['Email']}"),
            Text("Phone Number:${contactItems[index]['Phone Number']}"),


          ],
        ),
      );
    },);

  }
}
