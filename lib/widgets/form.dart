import 'package:flutter/material.dart';
import 'package:okay/screens/HomePageScreen.dart';

class MyForm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    void _submit() {
      final validate = _formKey.currentState.validate();
      if (validate) {
        Navigator.pushReplacementNamed(context, HomePage.routeName);
      }
      _formKey.currentState.save();
      return null;
    }

    return Container(
      height: 300,
      child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    // icon: Icon(Icons.star),
                    // suffixIcon: Icon(Icons.person),
                    // helperText: 'sunny',
                    // errorText: 'error',
                    // hintStyle: TextStyle(color: Colors.purple) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      // borderSide: BorderSide(
                      //   color: Colors.green,
                      //   width: 10,
                      // ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purple[900], width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.purple[900],
                    ),
                    labelStyle: TextStyle(color: Colors.purple[900]),
                    hintText: 'you@example@gmail.com',
                    labelText: 'Email'),
                validator: (email) {
                  if (email.isEmpty || !email.contains('@')) {
                    return 'Please Enter Valid Email.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                validator: (pass) {
                  if (pass.isEmpty || pass.length < 3) {
                    return 'Weak Password';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purple[900],
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.purple[900],
                    ),
                    labelStyle: TextStyle(color: Colors.purple[900]),
                    hintText: 'Name!@#123',
                    labelText: 'Password'),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: Colors.purple[900],
                ),
                onPressed: () {
                  _submit();
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
    );
  }
}
