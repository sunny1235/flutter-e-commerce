import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.purple[900])),
                            height: 65,
                            child: Image.asset('assets/images/google.png'),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.purple[900])),
                            height: 65,
                            child: Image.asset('assets/images/facebook.png'),
                          ),
                           Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.purple[900])),
                            height: 65,
                            child: Image.asset('assets/images/apple.png'),
                          ),
                        ],
                      ),
                    );
  }
}