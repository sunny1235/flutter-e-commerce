import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 500,
          width: 300,
          color: Colors.amber,
          child: Image.network('https://images.unsplash.com/photo-1629663904724-bbebe096a711?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
        ),
      ),
    );
  }
}
