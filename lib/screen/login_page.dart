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
              Expanded(
                  flex: 4,
                  child: Image.asset("assets/images/login.png",
                      fit: BoxFit.cover)),
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 24,
                  )),
              const Expanded(
                  flex: 1,
                  child: Text(
                    "Welcome to LogIn",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )),
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 20,
                  )),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
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
              ),
            ],
          ),
        )),
      ),
    );
  }
}
