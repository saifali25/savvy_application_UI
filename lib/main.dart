import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:savvy_application/LoginScreenBuyer.dart';
import 'package:savvy_application/LoginScreenSeller.dart';
import 'package:savvy_application/RegisterScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/second': (context) => const RegisterScreen(),
      },
      home: Container(
        child: DefaultTabController(
          length: 2,
          child: MaterialApp(
            home: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(150),
                child: AppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false, // hides leading widget
                  title: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                      height: 100.0,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/savvy.jpg',
                              //fit: BoxFit.cover,
                              height: 50.0,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Be',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  Text(
                                    ' Smart',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    ' Be',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  Text(
                                    ' Savvy',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  toolbarHeight: 150,
                  bottom: TabBar(
                    onTap: (index) {
                      // Tab index when user select it, it start from zero
                    },
                    indicatorColor: HexColor('#4B1A91'),
                    tabs: [
                      Tab(
                        child: Text(
                          'Buyer',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor('#4B1A91'),
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Seller',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: HexColor('#4B1A91'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                children: [
                  LoginScreenBuyer(),
                  LoginScreenSeller(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
