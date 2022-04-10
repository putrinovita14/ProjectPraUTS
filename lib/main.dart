import 'package:flutter/material.dart';
import 'package:project1/drawer.dart';
import 'package:project1/route.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text("Appbar"),
        centerTitle: true,
        backgroundColor: Colors.pink[600],
      ),
      drawer: DrawerWidget(),
      body: Center(child: Text('Welcome to My Aplication', style: TextStyle(fontSize: 20))),
    );
  }
}
