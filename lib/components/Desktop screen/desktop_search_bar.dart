// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../models/product_list.dart';

class DesktopSearchBar extends StatefulWidget {
  const DesktopSearchBar({super.key});

  @override
  State<DesktopSearchBar> createState() => _DesktopSearchBarState();
}

class _DesktopSearchBarState extends State<DesktopSearchBar> {
  String dropDownValue = 'test 1';
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
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 330,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24,
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
              SizedBox(width: 10),
              //Text('category'),
              DropdownButton(
                value: dropDownValue,
                underline: Container(),
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color.fromARGB(255, 201, 201, 201),
                ),
                items: List.generate(dropDownList.length, (index) {
                  return DropdownMenuItem(
                    value: dropDownList[index],
                    child: Text(dropDownList[index]),
                  );
                }),
                onChanged: (value) {
                  setState(() {
                    dropDownValue = value!;
                  });
                },
              ),
              //.w)
            ],
          ),
        ),
      ),
    );
  }
}
