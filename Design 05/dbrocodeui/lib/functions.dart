import 'package:flutter/material.dart';



//email ,github,linked in, facebook, instagram pages

Container items(String image, String name, String answer,{IconData ? icon})
{
  return Container(
    width: 500,
    height: 70,
    child: Row(children: [
      Expanded(
          flex: 1,
          child: Center(

              child: Padding(
                padding: EdgeInsets.only(bottom: 27),
                child:  Container(
                  width: 40,
                  height: 40,
                  child:
                      imageOrIcon(image, icon: icon),
                ),))),
      Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              Text(answer,style: TextStyle(fontSize: 17), ),
            ],
          )),
      Expanded(
          flex: 2,
          child: SizedBox())
    ],),
  );
}

Widget imageOrIcon(String image, {IconData ?icon}){
  if(icon == null)
    {
      return Image.asset(
        image,
        fit:BoxFit.cover ,
      );
    }
  else{
    return Icon(icon,size: 40,);
  }
}