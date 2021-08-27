import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:savvy_application/LoginScreenBuyer.dart';
import 'package:savvy_application/main.dart';
import 'package:sign_button/sign_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  int _radioValue = 0;
  _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/second': (context) => const RegisterScreen(),
      },
      home: Container(
        child: MaterialApp(
          home: Scaffold(
            body: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 15.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/savvy.jpg',
                    fit: BoxFit.fill,
                    height: 60.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Be',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          ' Smart',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          ' Be',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          ' Savvy',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.face,
                        color: Colors.black,
                        size: 25.0,
                      ),
                      SizedBox(width: 15.0),
                      Flexible(
                        fit: FlexFit.tight,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Full Name',
                            hintText: 'Enter Your Full Name',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
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
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Email Address',
                            hintText: 'Enter Your Email Address',
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
                        Icons.lock_open_rounded,
                        color: Colors.black,
                        size: 25.0,
                      ),
                      SizedBox(width: 15.0),
                      Flexible(
                        fit: FlexFit.tight,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2.0),
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
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Confirm Password',
                            hintText: 'Confirm Your Password',
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
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateProperty.all(
                                  HexColor('#893bb7')),
                              value: 0,
                              groupValue: _radioValue,
                              onChanged: _handleRadioValueChange(0),
                            ),
                            Text(
                              'Buyer',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 140.0),
                            Radio(
                              fillColor: MaterialStateProperty.all(
                                  HexColor('#893bb7')),
                              value: 1,
                              groupValue: _radioValue,
                              onChanged: _handleRadioValueChange(0),
                            ),
                            Text(
                              'Seller',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
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
                          'Sign Up',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: HexColor('#893bb7'),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 140, vertical: 10.0),
                          textStyle: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Or sign up with',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SignInButton(
                          //buttonSize: ButtonSize.small,
                          buttonType: ButtonType.google,
                          btnText: 'Sign up with Google',
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 2.5,
                        ),
                        SignInButton(
                          //buttonSize: ButtonSize.small,
                          buttonType: ButtonType.facebook,
                          btnText: 'Sign up with Facebook',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Already have an account?',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text(
                        'Log in here',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
