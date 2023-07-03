import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() => AppState();

}

class AppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Test',
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}


class _MyHomeScreenState extends State<MyHomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text("Live Test-8"),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white
          ),
          backgroundColor: Colors.blueGrey,
          elevation: 5,

        ),
        body: Container(

        )

    );
  }
}
