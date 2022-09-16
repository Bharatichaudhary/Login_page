
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final String username;
    HomePage(this.username);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(child: Text("Welcome "+ username,style: TextStyle(fontSize: 20)))
        ],
      ),
    );
  }
}