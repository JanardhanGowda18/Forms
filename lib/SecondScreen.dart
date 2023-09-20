import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String text;

  SecondScreen({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username and Password Entered as :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the first screen.
              },
              child: Text('Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
