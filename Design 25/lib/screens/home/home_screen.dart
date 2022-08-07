import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';

import 'components/categories.dart';
import 'components/new_arrival_products.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white38.withOpacity(0.94),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu_80837.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "Sri Lanka",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "D Bro Shop",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
            Center(
              child: const Text(
                "Place Where You Shop",
                style: TextStyle(fontSize: 14, ),
              ),
            ),

            SizedBox(height: 20,),
            const Categories(),
            const NewArrivalProducts(),
            // const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
