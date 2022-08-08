import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 304,
        padding: const EdgeInsets.all(defaultPadding / 2),
        margin: EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Container(
                      height: 250,
                      width: 500,
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius)),
                  ),
                  child: Image.asset(
                    image,
                    height: 80,

                  ),
                ),

            FractionalTranslation(
              translation: Offset(0, -0.5),
              child: Container(
                width: 160,
                height: 70,
                child: Center(
                    child: Text(
                      "\$" + price.toString(),
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 5, color: Colors.white)),
              ),
            ),
            FractionalTranslation(
              translation: Offset(0,-0.6),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(

                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
