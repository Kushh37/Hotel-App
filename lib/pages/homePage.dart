import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var data;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Hotel App"),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
      ),
    );
  }
}
