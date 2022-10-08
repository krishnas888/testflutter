import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset("assets/images/login.png",
                  fit: BoxFit.cover),
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
                          hintText: "Enter username", labelText: "Username"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 200,
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
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),),
      ),
    );
  }
}
