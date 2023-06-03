import 'package:flutter/material.dart';
import 'package:flutter_application_chat/screen_otp.dart';

class ScreenHello extends StatelessWidget {
  const ScreenHello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Helloo!',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const Text(
              'Please enter your details',
              style: TextStyle(fontSize: 7, color: Colors.white),
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
                    hintText: 'Phone number',
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
            ElevatedButton(
              child: Text('Request OTP'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenOtp()),
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 37, 227, 44))),
            )
          ],
        ),
      ),
    );
  }
}
