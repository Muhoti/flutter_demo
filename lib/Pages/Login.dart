import 'package:demo/Components/MyTextInput.dart';
import 'package:demo/Components/SubmitButton.dart';
import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String myname = '';
  int phone = 0;
  String value = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        child: Center(
          child: Column(
            children: [
              Text("Login Form"),
              MyTextInput(
                  title: "Enter Your Name",
                  lines: 1,
                  value: value,
                  type: TextInputType.text,
                  onSubmit: (value) {
                    setState(() {
                      myname = value;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              MyTextInput(
                  title: "Enter Your Password",
                  lines: 1,
                  value: value,
                  type: TextInputType.visiblePassword,
                  onSubmit: (value) {
                    setState(() {
                      password = value;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              MyTextInput(
                  title: "Enter Phone",
                  lines: 1,
                  value: value,
                  type: TextInputType.phone,
                  onSubmit: (value) {
                    setState(() {
                      phone = int.parse(value);
                    });
                  }),
              const SizedBox(),
              SubmitButton(label: "Login", onButtonPressed: (){
                // submitdata()
                Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) =>  const MyApp()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
