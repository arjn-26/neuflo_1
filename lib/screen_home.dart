import 'package:flutter/material.dart';
import 'package:flutter_application_chat/screen_hello.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/image 6.png'),
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              // color: Colors.blueGrey,
              image: DecorationImage(
                image: AssetImage('images/Cryptofy.png'),
              ),
            ),
          ),
          ElevatedButton(
            child: Text('click here'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenHello()),
              );
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 39, 39, 39))),
          ),
        ],
      ),
    );
  }
}
