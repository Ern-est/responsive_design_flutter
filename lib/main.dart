import 'package:flutter/material.dart';
import 'package:responsive_designs/responsive/desktop_scafold.dart';
import 'package:responsive_designs/responsive/mobile_scafold.dart';
import 'package:responsive_designs/responsive/responsive_layout.dart';
import 'package:responsive_designs/responsive/tablet_scafold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScafold: MobileScafold(),
        tabletScafold: TabletScafold(),
        desktopScafold: DesktopScafold(),
      ),
    );
  }
}
