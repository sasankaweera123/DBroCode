import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:record/Functions/func.dart';

class SignUpCont extends StatefulWidget {
  const SignUpCont({Key? key}) : super(key: key);

  @override
  _SignUpContState createState() => _SignUpContState();
}

class _SignUpContState extends State<SignUpCont> {
  var currentSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: txtFieldDeco(txt: "Enter Your User Name", txtColor: Color(0xff006479), fillColor:  Color(0xff006479), fSize: 16, fweight: FontWeight.w700),
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: txtFieldDeco(txt: "Password", txtColor: Color(0xff006479), fillColor: Color(0xff006479), fSize: 16, fweight: FontWeight.w700),
        ),
        SizedBox(height: 20,),

        TextField(decoration: txtFieldDeco(txt: "Confirm Password", txtColor: Color(0xff006479), fillColor: Color(0xff006479), fSize: 16, fweight: FontWeight.w700
        ),),

        SizedBox(height: 30,),
        SizedBox(
          height: 53,
          width: 235,
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor:Color(0xff006479),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            child: appText(txt: "SIGN UP", color: Color(0xffddf9ff), fSize: 22, fWeight: FontWeight.w700),

          ),
        )
      ],
    );
  }
}
