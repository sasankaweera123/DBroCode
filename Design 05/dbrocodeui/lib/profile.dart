import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'functions.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  @override
  void initState() {
    setState(() {
      updateTabSelection(
          1,
          "Gayashani \n   Divyanjalee",
          "Gayashani00",
          "Gayashani Divyanjalee",
          "Gayashani Divyanjalee",
          "_gysh_",
          "gayaherath9468@gmail.com",
          'assets/gaya.jpg',
          'assets/Arrow Full Design.png');
    });
    super.initState();
  }

  bool logoin = false;
  int selectedIndex = 0;

  String _name = "";
  String _gitHub = "";
  String _linkedIn = "";
  String _facebook = "";
  String _instagram = "";
  String _email = "";
  String _photo = '';
  String _sidePhoto = '';

  void updateTabSelection(
      int index,
      String name,
      String github,
      String linkedIn,
      String facebook,
      String instagram,
      String email,
      String photo,
      String sidephoto) {
    setState(() {
      selectedIndex = index;
      this._name = name;
      this._email = email;
      this._facebook = facebook;
      this._gitHub = github;
      this._instagram = instagram;
      this._linkedIn = linkedIn;
      this._photo = photo;
      this._sidePhoto = sidephoto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //specify the location of the FAB
      floatingActionButton: Container(
        width: 85,
        height: 85,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> MyApp()),
              );
            },
            child: Container(
              //color: Colors.black,
              margin: EdgeInsets.all(4.0),
              child: Image.asset(
                'assets/profile.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            elevation: 4.0,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color(0xff301D62),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {
                    logoin = !logoin;
                    updateTabSelection(
                        1,
                        "Gayashani \n   Divyanjalee",
                        "Gayashani00",
                        "Gayashani Divyanjalee",
                        "Gayashani Divyanjalee",
                        "_gysh_",
                        "gayaherath9468@gmail.com",
                        'assets/gaya.jpg',
                        'assets/Arrow Full Design.png');
                  },
                  iconSize: 50.0,
                  icon: Icon(
                    Icons.female,
                    color: selectedIndex == 1
                        ? Colors.white
                        : Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {
                    logoin = !logoin;

                    updateTabSelection(
                        2,
                        "Pavindu \n   Chamikara",
                        "Pavindu C",
                        "Pavindu C",
                        "Pavindu Chamikara",
                        "pavindu_c",
                        "damianbats23@gmail.com",
                        'assets/pavi.jpg',
                        'assets/Line Full Design.png');
                  },
                  iconSize: 50.0,
                  icon: Icon(
                    Icons.male,
                    color: selectedIndex == 2
                        ? Colors.white
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
              children: <Widget>[
                Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [Color(0xff210D48),Color(0xff392370)]
                            ),
                          ),
                        )),
                    Expanded(flex: 7, child: SizedBox())
                  ],
                ),
                Positioned(
                    top: 115,
                    left: 22,
                    child: Container(
                      width: 180,
                      height: 180,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        radius: 16.0,
                        backgroundColor: Colors.transparent,
                        child: ClipRRect(
                          child: Image.asset(
                            _photo,
                            fit: BoxFit.cover,
                            height: double.infinity,
                          ),
                          borderRadius: BorderRadius.circular(75.0),
                        ),
                      ),
                    )),
                Positioned(
                    top: 85,
                    left: 180,
                    child: Text(
                      _name,
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 210,
                    left: 215,
                    child: Text(
                      "D_Bro_Code \n                     Member",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 320,
                    child: items("assets/email.png", "Email", _email,icon: Icons.email)),
                Positioned(
                    top: 390,
                    child: items("assets/github.png", "Github", _gitHub,icon: FontAwesomeIcons.github)),
                Positioned(
                    top: 460,
                    child: items("assets/linkedin.png", "LinkedIn", _linkedIn,icon: FontAwesomeIcons.linkedin)),
                Positioned(
                    top: 530,
                    child: items(
                        "assets/facebook-logo.png", "Facebook", _facebook, icon: Icons.facebook)),
                Positioned(
                    top: 600,
                    child: items(
                        "assets/instagram-logo.png", "Instagram", _instagram, icon: FontAwesomeIcons.instagram)),
                Positioned(
                  top: 360,
                  left: 280,
                  child: Container(
                    width: 90,
                    height: 350,
                    child: Image.asset(
                      _sidePhoto,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            )
    );
  }
}
