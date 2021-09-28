import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:record/Login/signin.dart';
import 'package:record/Login/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff00323d),
            padding: const EdgeInsets.only(
              left: 18,
              right: 24,
              top: 5,
              //   bottom: 34,
            ),
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(25),
                  width: 300,
                  height: 180,
                  child:
                  Image.asset(
                    'assests/logo.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),

                //tabs used from this

                Stack(
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 22,
                        ),
                        Container(


                          padding: const EdgeInsets.only(
                              top: 50, left: 20, right: 20),
                          //width: 327,
                          height: 420,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Color(0xf9456ba4),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Color(0xffe7e9f6),
                          ),
                          //  height: 300,
                          child:  TabBarView(
                            children: <Widget>[
                              SignInCont(),
                              SignUpCont(),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //these are for tabs
                    Align(
                      child: Container(
                        width: 315,
                        decoration: BoxDecoration(
                          color: Color(0xffddf9ff),
                          borderRadius: BorderRadius.circular(19),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TabBar(
                            unselectedLabelColor: Color(0xff006479),
                            labelStyle: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xffddf9ff),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                )),
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Color(0xff006479),
                            ),
                            tabs: const <Tab>[
                              Tab(
                                text: 'LOG IN',
                              ),
                              Tab(
                                text: 'SIGN UP',
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
