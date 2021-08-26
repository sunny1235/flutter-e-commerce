
import 'package:flutter/material.dart';


import '../widgets/form.dart';
import '../widgets/bottomIcons.dart';


class LoginPage extends StatefulWidget {

  static const routeName = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  child: Image.asset('assets/images/n.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment(-1, 0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple[900],
                            fontSize: 30),
                      ),
                    ),
                   MyForm(),
                   BottomIcons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}