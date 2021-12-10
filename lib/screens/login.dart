import 'package:data_me/screens/logScreen.dart';
import 'package:data_me/services/methods.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(),
                ),
                margin: EdgeInsets.only(
                  top: 150,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F5),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(300, 100),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 320),
                decoration: BoxDecoration(
                  color: Color(0xffEAE9EF),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(300, 100),
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
                      top: MediaQuery.of(context).size.height / 1.77,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff101E41),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(300, 90),
                      ),
                    ),
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
                            margin: EdgeInsets.only(top: 10, bottom: 25),
                            color: Colors.white12,
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: TextField(
                              controller: emailController,
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
                            margin: EdgeInsets.only(top: 10),
                            color: Colors.white12,
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: TextField(
                              controller: passwordController,
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
                            height: 25,
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
                                if (emailController.text.isNotEmpty &&
                                    passwordController.text.isNotEmpty) {
                                  login(
                                          email: emailController.text,
                                          password: passwordController.text)
                                      .then((user) {
                                    if (user != null) {
                                      print('login success');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return LogScreen();
                                          },
                                        ),
                                      );
                                    } else {
                                      print('login fail');
                                    }
                                  });
                                }
                              },
                              child: Text(
                                'Log In',
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
                ],
              ),
              Container(
                height: 120,
                width: 190,
                // margin: EdgeInsets.only(top: 50),
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
                        'Log In',
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
