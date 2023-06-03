import 'package:flutter/material.dart';

class ScreenChats extends StatelessWidget {
  final List<String> names = [
    'Allen',
    'Barry',
    'Becky',
    'Parker',
    'Jeff',
    'Diane',
    'Will',
    'Joe'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        title: Center(
            child: Text(
          'Chats',
        )),
        backgroundColor: Color(0xff1E1E1E),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.account_circle), // Icon on the left side
            title: Text(names[index]), // Text in the middle
            trailing: const Text(
              '02:31 pm',
              style: TextStyle(color: Colors.white),
            ), // Text on the right side
          );
        },
      ),
    );
  }
}
