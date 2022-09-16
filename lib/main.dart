import 'package:flutter/material.dart';
import 'package:login_page/App/LoginPage.dart';

void main() => runApp(
  Login_page());

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page", home: LoginPage());
  }
}
