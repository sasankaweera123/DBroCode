import 'package:flutter/material.dart';

class Product {
  final String image, title,desc;
  final int price;
  final Color bgColor;


  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.desc,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/heaphone.png",
    title: "Telex Air3100 Headphones",
    price: 220,
    bgColor: const Color(0xfff2f2f6),
    desc:"The Telex Air3100 is a medium-weight noise-reduction headset with amplified, noise-canceling, electret microphones. The Telex Air3100L is a headphone only and does not have a microphone. They both have a noise reduction rating of 21 dB, and are suitable for use in moderately noisy aircraft. ",
  ),
  Product(
    image: "assets/images/keyboard.png",
    title: "Das Keyboard X40 Pro",
    price: 120,
    bgColor: const Color(0xffe9e4e4),
    desc: "Division Zero X40 Pro Gaming Mechanical Keyboard, reflecting a Das Keyboard gaming sub-brand. Das Keyboard has since canceled the Division Zero line and changed the name of the keyboard accordingly. "
  ),
  Product(
    image: "assets/images/laptop.png",
    title: "Acer Aspire 5",
    price: 500,
    bgColor: const Color(0xfff2f0ff),
    desc: "With the Acer Aspire 5, you get a powerful 8th Gen i5 processor packed into a stylish design, all for the low price. The problem is, that's about all you're getting. The Aspire 5's battery life barely lasts half a workday, and the machine's 15.6-inch display has as much color in it . "
  ),
  Product(
    image: "assets/images/mouse.png",
    title: "Gaming mouse",
    price: 100,
    bgColor: const Color(0xFFEEEEED),
    desc: "A mouse designed for gamers. Gaming mice have adjustable sensitivity, which is configurable as the number of dots per inch (DPI). The greater the DPI, the farther the cursor moves on screen with the same amount of mouse movement."
  ),

];
