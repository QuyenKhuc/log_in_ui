import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 50.0),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome back, ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          //letterSpacing: 1.4,
                        ),
                      ),
                      TextSpan(
                        text: 'James',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          //letterSpacing: 1.4,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email address',
                  ),
                ),
                SizedBox(height: 25.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Image.asset(
                      'assets/facebook.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    SizedBox(width: 15.0),
                    Image.asset(
                      'assets/google.png',
                      width: 32.0,
                      height: 32.0,
                    ),
                  ],
                ),
              ],
            ),
            Text('Forgot Password?'),
          ],
        ),
      ),
    );
  }
}
