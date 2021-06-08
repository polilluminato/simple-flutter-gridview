

import 'package:flutter/material.dart';
import 'package:simple_flutter_gridview/constants.dart';
import 'package:simple_flutter_gridview/layouts/custom_gridview.dart';

class ResponsiveLayout extends StatefulWidget {
  @override
  _ResponsiveLayoutState createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        if (dimens.maxWidth <= kMobileBreakpoint) {
          return CustomGridView(columnRatio: 6,);
        } else if (dimens.maxWidth > kMobileBreakpoint &&
            dimens.maxWidth <= kTabletBreakpoint) {
          return CustomGridView(columnRatio: 4,);
        } else if (dimens.maxWidth > kTabletBreakpoint &&
            dimens.maxWidth <= kDesktopBreakPoint) {
          return CustomGridView(columnRatio: 3,);
        } else {
          return CustomGridView(columnRatio: 2);
        }
      },
    );
  }
}


