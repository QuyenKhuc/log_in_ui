import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
        child: Column(
          children: [
            SizedBox(height: 50.0),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35.0,
                        //letterSpacing: 1.4,
                      ),
                    ),
                    TextSpan(
                      text: 'Beautiful',
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
            ),
            SizedBox(height: 15.0),
            Text(
              'Enter your information below or log in with a social account',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[400],
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
            SizedBox(height: 25.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
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
      ),
    );
  }
}
