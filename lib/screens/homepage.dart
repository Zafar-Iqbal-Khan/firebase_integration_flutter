import 'package:data_me/screens/login.dart';
import 'package:data_me/screens/signup.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(),
              ),
              margin: EdgeInsets.only(
                top: 150,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4, left: 4),
                              height: 30,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: Color(0xff3255EC),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Container(
                              height: 45,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4, left: 4),
                              height: 45,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: Color(0xff3255EC),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4, left: 4),
                              height: 60,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: Color(0xff3255EC),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Container(
                              height: 75,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4, left: 4),
                              height: 75,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: Color(0xff3255EC),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Container(
                              height: 90,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4, left: 4),
                              height: 90,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: Color(0xff3255EC),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Firebase Integration',
                        style: TextStyle(
                          fontSize: 29,
                          color: Color(0xff3255EC),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff3255EC),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 350),
              decoration: BoxDecoration(
                color: Color(0xffF2F3F5),
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(300, 100),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 470),
              decoration: BoxDecoration(
                color: Color(0xffEAE9EF),
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(300, 100),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 600),
              decoration: BoxDecoration(
                color: Color(0xff101E41),
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(300, 90),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                            right: Radius.circular(20),
                          ),
                          color: Color(0xff3255EC),
                        ),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 23,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20),
                            right: Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
