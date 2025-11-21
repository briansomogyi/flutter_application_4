import 'package:flutter/material.dart';

import '../models/css_color.dart';
import '../utils/color_utils.dart';

class CssColorListItem extends StatelessWidget {
  const CssColorListItem({super.key, required this.cssColor});

  final CssColor cssColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: cssColor.color,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(cssColor.colorName),
          Text(toHex(cssColor.color)),
        ],
      ),
    );
  }
}
