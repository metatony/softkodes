// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:softkodes/components/Mobile%20screen/mobile_page.dart';
import 'Desktop screen/desktop_page.dart';


class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1023) {
        return MobilePage();
      } else {
        return DesktopPage();
      }
    });
  }
}
