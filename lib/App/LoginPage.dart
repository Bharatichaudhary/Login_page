import 'package:flutter/material.dart';
import 'package:login_page/App/HomePage.dart';
  TextStyle myStyle = TextStyle(fontSize: 20);


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username="";
  String password="";
  
 
  @override
  Widget build(BuildContext context) {
    final usernameFeild= TextField(
      onChanged: (val){
        setState(() {
          username= val;
        });
      },
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "Username",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30) )
    ),
  );
  final passwordFeild= TextField(
    onChanged: (val){
        setState(() {
          password= val;
        });
      },
    obscureText: true,
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "Password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30) )
    ),
  );
    final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30),
    color: Colors.blue,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      onPressed: (){
        if(username== "Bharati" && password=="1234" || username=="Motu" && password=="2244"){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
            HomePage(username)
          ));
        }
        else{
          print("Login Failed");          
        }

      },
      child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 18)),
    ),
  );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded ,size: 100),
                SizedBox(height: 40),
                usernameFeild,
                SizedBox(height: 20),
                passwordFeild,
                SizedBox(height: 50),
                loginButton

              ],
            ),
          ),
        ),
      ),
    );
    
  }
}