import 'package:flutter/material.dart';
import 'package:record/Login/login.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder:(context, AsyncSnapshot snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return const MaterialApp(
              home: Splash(),
              debugShowCheckedModeBanner: false,
            );
          }
          else{
            return const Login();
          }

        }
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff00323d),
      padding: EdgeInsets.all(20),
      child: Image.asset("assests/logo.png",
      fit: BoxFit.fitWidth,
      ),

    );
  }
}
