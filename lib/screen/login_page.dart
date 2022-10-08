import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset("assets/images/login.png", fit: BoxFit.cover),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Welcome to LogIn",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter username",
                              labelText: "Username"),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password"),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        /*Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.deepPurpleAccent.shade200,
                                blurRadius: 8,
                                spreadRadius: (1),
                                offset: const Offset(-4,-4)
                            ),
                            BoxShadow(
                                color: Colors.deepPurple.shade900,
                                blurRadius: 2,
                                spreadRadius: (1),
                                offset: const Offset(4,4)
                            ),
                          ]
                        ),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),style: TextButton.styleFrom(
                          minimumSize: const Size(200, 40)
                        ),
                        ),
                      ),*/
                        InkWell(
                          onTap: ()async{
                            setState(() {
                              changeButton = true;
                            });
                            await Future.delayed(Duration(seconds: 1));
                           Navigator.pushNamed(context, "/home");
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width:  changeButton?50:200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(changeButton?50:15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.deepPurpleAccent.shade200,
                                      blurRadius: 8,
                                      spreadRadius: (1),
                                      offset: const Offset(-4, -4)),
                                  BoxShadow(
                                      color: Colors.deepPurple.shade900,
                                      blurRadius: 2,
                                      spreadRadius: (1),
                                      offset: const Offset(4, 4)),
                                ],),

                            child: changeButton ? Icon(Icons.done,color: Colors.white,): Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,letterSpacing: 1.2),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
