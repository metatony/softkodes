// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';

class DesktopSearchBar extends StatelessWidget {
  const DesktopSearchBar({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.symmetric(
            //vertical: 20.h,
            ),
        height: 73,
        width: 538,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 22,
                  ),
                  hintText: 'Search for a product',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                ),
              ),
            ),
            VerticalDivider(
              indent: 21,
              endIndent: 22,
              thickness: 1,
              color: Colors.black,
            ),
            Text('category'),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color.fromARGB(255, 201, 201, 201),
            ),
            //.w)
          ],
        ),
      ),
    );
  }
}
