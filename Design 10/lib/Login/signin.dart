import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:record/Functions/func.dart';

class SignInCont extends StatefulWidget {
  const SignInCont({Key? key}) : super(key: key);

  @override
  _SignInContState createState() => _SignInContState();
}

class _SignInContState extends State<SignInCont> {
var vis=true;
  late String _username;
  late String _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController pwController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (String? value) => _username = value!,
                  decoration: txtFieldDeco(
                    txt: 'Enter Your User Name',
                    txtColor:Color(0xff006479),
                    fillColor:Color(0xff006479),
                    fSize: 16,
     fweight: FontWeight.w700,

                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Password can't be empty ";
                    }

                    if (value.length <= 8 || value.length >= 20) {
                      return 'Password minimum be have 8 characters '
                          'or maximum characters 20';
                    }

                  },
                  onSaved: (String? value) => _password = value!,
                  //controller: passwordController,
                  obscureText: vis,
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color(0xff006479),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Color(0xff006479)),
                    suffixIcon: IconButton(
                      color: Color(0xffddf9ff).withOpacity(0.7),
                      icon: Icon(vis ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          vis = !vis;
                        });
                      },
                    ),
                  ),
                  //border: OutlineInputBorder(),

                  onChanged: (String value) {},
                ),
                const SizedBox(
                  height: 18,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: appText(
                        txt: 'Forgot  Password?',
                        color:  Color(0xff006479),
                        fSize: 16,
                        fWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 235,
                  height: 53,
                  child: TextButton(
                    onPressed:(){

                    },
                    //Navigator.pushNamed(context, '/dashboard');
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff006479),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: appText(
                      txt: 'LOG IN',
                      color: Color(0xffddf9ff),
                      fSize: 22,
                      fWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
