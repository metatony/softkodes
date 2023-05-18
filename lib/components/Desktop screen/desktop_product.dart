// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:softkodes/widgets/add_button.dart';

class DesktopProductCard extends StatefulWidget {
  const DesktopProductCard({
    super.key,
  });

  @override
  State<DesktopProductCard> createState() => _DesktopProductCardState();
}

class _DesktopProductCardState extends State<DesktopProductCard> {
  bool addCart = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 0.40.toInt()),
      height: addCart ? 334 : 290,
      width: addCart ? 264 : 259,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              //color: Colors.green,
              width: double.infinity,
              child: Image.asset(
                'images/image1.png',
                fit: BoxFit.fill,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  addCart = !addCart;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 13),
                child: SizedBox(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Adidas Converse',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 13),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$1200',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            addCart ? AddButtton(function: (){}) : Container()
          ],
        ),
      ),
    );
  }
}
