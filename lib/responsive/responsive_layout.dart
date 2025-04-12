import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScafold;
  final Widget tabletScafold;
  final Widget desktopScafold;
  const ResponsiveLayout({
    super.key,
    required this.mobileScafold,
    required this.tabletScafold,
    required this.desktopScafold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth < 500) {
          return mobileScafold;
        } else if (Constraints.maxWidth < 1100) {
          return tabletScafold;
        } else {
          return desktopScafold;
        }
      },
    );
  }
}
