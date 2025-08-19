import 'package:flutter/material.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_application_1/widget/widget_button.dart';
import 'package:flutter_application_1/widget/widget_textfild.dart';
import 'home_page.dart'; 

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var statusLogin = "login stat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoginPage")),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to the Login Page!",
              style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            ),

            Text("molcy"),
            Center(
              child: Image.asset(
                'asset/image/prabonex.jpg',
                width: 200,
                height: 200,
              ),
            ),
           MyTextFild(
              controller: usernameController,
              hint: "Username", labelText: '',

            ),
            SizedBox(height: 20),
            
            MyTextFild(
              controller: passwordController,
              hint: "Password",
              isPassword: true, labelText: '',
            ),

            Container(
              margin: EdgeInsets.only(top: 25),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (usernameController.text == "admin" &&
                        passwordController.text == "admin") {
                          
                      setState(() {
                        statusLogin = "sukses login";
                        print(statusLogin);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Calculator(), 
                            
                          ),
                        );
                      });
                    } else {
                      setState(() {
                        statusLogin = "gagal login";
                        print(statusLogin);
                      });
                    }
                  },

                  child:CustomButton(
                    text: "Login",
                    textColor: const Color.fromARGB(255, 223, 3, 3),
                    onPressed: () {}),

                ),
              ),
            ),  

                 TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child:CustomButton(
              text: "register",
              textColor:  const Color.fromARGB(255, 85, 19, 170),
              onPressed: () {}),

              
            ),
 Text(statusLogin),  
          ],
        ),
      ),
    );
  }
}
