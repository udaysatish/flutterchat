import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mychatapp/Screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailtexteditingcontroller = TextEditingController();
  TextEditingController _passwordtexteditingcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(children: [
              TextField(
                controller: _emailtexteditingcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: " Email",
                  hintText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: true,
                controller: _passwordtexteditingcontroller,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: " password",
                  hintText: "Enter password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: const Text("login")),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => RegisterScreen(),
                      ),
                    );
                  },
                  child: const Text("Register"))
            ]),
          ),
        ));
  }

  login() {
    String email = _emailtexteditingcontroller.text;
    String password = _passwordtexteditingcontroller.text;
    print("$email >>>>>>> $password");
  }
}
