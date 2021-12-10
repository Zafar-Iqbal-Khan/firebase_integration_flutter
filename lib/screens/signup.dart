import 'package:data_me/screens/homepage.dart';
import 'package:data_me/screens/logScreen.dart';
import 'package:data_me/screens/login.dart';
import 'package:data_me/services/methods.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
    TextEditingController name = TextEditingController();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 1.2,
                  top: MediaQuery.of(context).size.height / 16,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.info_outline,
                  ),
                ),
              ),
              ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 4),
                    decoration: BoxDecoration(
                      color: Color(0xff101E41),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(300, 90),
                      ),
                    ),
                    child: Form(
                      key: _formkey,
                      child: Container(
                        margin: EdgeInsets.only(top: 60, left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email or phone number",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 35),
                              color: Colors.white12,
                              height: 40,
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'enter a valid email';
                                  }
                                  if (!RegExp(
                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return 'Please a valid Email';
                                  }
                                  return null;
                                },
                                controller: email,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type here...',
                                  contentPadding:
                                      EdgeInsets.only(bottom: 5, left: 12),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 35,
                              ),
                              color: Colors.white12,
                              height: 40,
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value.length <= 6) {
                                    return 'smaller password';
                                  }

                                  return null;
                                },
                                controller: password,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type here...',
                                  contentPadding:
                                      EdgeInsets.only(bottom: 5, left: 12),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Confirm password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 35),
                              color: Colors.white12,
                              height: 40,
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: TextFormField(
                                validator: (value) {
                                  if (password.text != confirmPassword.text) {
                                    return "Password does not match";
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.name,
                                controller: confirmPassword,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type here...',
                                  contentPadding:
                                      EdgeInsets.only(bottom: 5, left: 12),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Name or pseudo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              color: Colors.white12,
                              height: 40,
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller: name,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type here...',
                                  contentPadding:
                                      EdgeInsets.only(bottom: 5, left: 12),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 3.5,
                                bottom: MediaQuery.of(context).size.height / 50,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff3255EC),
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(25),
                                  right: Radius.circular(25),
                                ),
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  _formkey.currentState.validate();
                                  _formkey.currentState.save();
                                  if (email.text.isNotEmpty &&
                                      password.text.isNotEmpty &&
                                      name.text.isNotEmpty) {
                                    createAccount(
                                            email: email.text,
                                            password: password.text,
                                            name: name.text)
                                        .then((user) {
                                      if (user != null) {
                                        print('success');
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => Login(),
                                          ),
                                        );
                                      } else {
                                        print('failed');
                                      }
                                    });
                                  } else {
                                    print('please enter details');
                                  }
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 120,
                width: 190,
                decoration: BoxDecoration(
                  color: Color(0xff3255EC),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(130, 20),
                    bottomRight: Radius.elliptical(130, 150),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
