import 'package:flutter/material.dart';

class ResponsiveLayoutScaffold extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  ResponsiveLayoutScaffold({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileScaffold;
        } else {
          return tabletScaffold;
        }
      },
    );
  }
}
