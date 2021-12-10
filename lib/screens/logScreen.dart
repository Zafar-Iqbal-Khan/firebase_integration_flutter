import 'package:data_me/services/methods.dart';
import 'package:flutter/material.dart';

class LogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login Successful...',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                'log Out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                logout(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
