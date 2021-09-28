import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration txtFieldDeco(
{
  required String txt,
  required Color txtColor,
  required Color fillColor,
  required double fSize,
  required FontWeight fweight,

}
){
  return InputDecoration(
    labelText: txt,
    labelStyle: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: txtColor,
        fontSize: fSize,
        fontWeight: fweight
      ),
    ),

    fillColor: fillColor,

  );
}
Text  appText(
{
  required String txt,
  required Color color,
  required double fSize,
  required FontWeight fWeight,

}
    ){
  return Text(txt,
  style: GoogleFonts.poppins(
    textStyle: TextStyle(
      color: color, fontSize: fSize,fontWeight: fWeight
    )
  ),
  );


}