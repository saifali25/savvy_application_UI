import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sign_button/create_button.dart';
import 'package:sign_button/sign_button.dart';

import 'RegisterScreen.dart';

class LoginScreenBuyer extends StatelessWidget {
  const LoginScreenBuyer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.black,
                  size: 25.0,
                ),
                SizedBox(width: 15.0),
                Flexible(
                  fit: FlexFit.tight,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 25.0,
                ),
                SizedBox(width: 15.0),
                Flexible(
                  fit: FlexFit.tight,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 200.0),
              child: Text(
                'Forgot your password ?',
                style: TextStyle(
                  color: HexColor('#472A65'),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                decoration:
                    BoxDecoration(color: HexColor('#893bb7'), boxShadow: [
                  BoxShadow(
                    color: HexColor('#A66ABD'),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ]),
                child: ElevatedButton(
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: HexColor('#893bb7'),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 140, vertical: 10.0),
                    textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Or sign in with',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    //buttonSize: ButtonSize.small,
                    buttonType: ButtonType.google,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 2.5,
                  ),
                  SignInButton(
                    //buttonSize: ButtonSize.small,
                    buttonType: ButtonType.facebook,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'New to Savvy?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Text(
                  'Sign up here ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
