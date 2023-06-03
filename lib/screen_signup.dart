import 'package:flutter/material.dart';
import 'package:flutter_application_chat/screen_chats.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
              child: TextField(
                scrollPadding: EdgeInsets.all(20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
              child: TextField(
                scrollPadding: EdgeInsets.all(20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
          ),
          const Text(
            'Remember me',
            style: TextStyle(fontSize: 9, color: Colors.white),
          ),
          ElevatedButton(
            child: Text('Log In'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenChats()),
              );
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 50, 191, 125))),
          ),
          const Text(
            'Forgot password',
            style: TextStyle(fontSize: 9, color: Colors.white),
          ),
          SizedBox(
            height: 60,
          ),
          const Text(
            'OR',
            style: TextStyle(fontSize: 9, color: Colors.white),
          ),
          ElevatedButton(
            child: Text('Sign up'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenSignup()),
              );
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 46, 247, 116))),
          ),
        ],
      ),
    );
  }
}
