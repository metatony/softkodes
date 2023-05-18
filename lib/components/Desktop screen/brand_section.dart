// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'image_box.dart';

class BrandSection extends StatelessWidget {
  const BrandSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Image.asset(
            'images/Ellipse 1.png',
            width: 83,
            height: 82,
          ),
        ),
        SizedBox(width: 38),
        Text(
          'Adidas Sport Wears',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        SizedBox(width: 258),
        for (int i = 1; i < 6; i++)
          Expanded(child: ImageBox(image: 'images/logo.png')),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 65,
            width: 65,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/logo.png',
                  fit: BoxFit.contain,
                ),
                Opacity(
                  opacity: .5,
                  child: Container(
                    height: 65,
                    width: 65,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    
                  ),
                ),
                Text(
                  '+10',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
