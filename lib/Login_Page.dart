import 'package:flutter/material.dart';
import 'package:flutter_application_1/Main_Menu.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_application_1/widget/widget_button.dart';
import 'package:flutter_application_1/widget/widget_textfild.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "Login Status";

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to the Login Page!", 
            style: TextStyle(fontSize: 18,color: Colors.blueGrey, fontWeight: FontWeight.bold),),
            Text("Please login using your username and password."),
            //image dari resources
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                'assets/gambar.png',
                width: 200,
                height: 200,
              ),
            ),
            
           MyTextFild(
              controller: txtUsername,
              hint: "Enter your username",
              labelText: "Username",
            ),
            MyTextFild(controller: txtPassword, hint: "Enter your password", labelText: "Password"),
            
          
            Center(
            child: CustomButton(text: "Login", textColour: Colors.blue, onPressed: (){
              //jika username dan password adalah admin maka muncul snackbar
                    if(txtUsername.text == "Ihsan" && txtPassword.text == "Ihsan"){
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successfull")),
                      );
                      setState(() {
                        statusLogin = "Login Successfull";
                        print(statusLogin);
                      });
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => MainMenu()),
                        );
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Error")),
                      
                      );
                      setState(() {
                        statusLogin = "Login Error";
                        print(statusLogin);
                      });
                    }
            }, textColor: Colors.blueAccent,),
            ),

            Center(
            child: CustomButton(text: "Register", textColour: Colors.red, onPressed: (){
              Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
            }, textColor:  Colors.blueAccent,),
            ),
          ],
        ),
      ),
    );
  }
}