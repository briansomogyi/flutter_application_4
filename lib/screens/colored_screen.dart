import 'package:flutter/material.dart';

import 'package:share_plus/share_plus.dart';

import '../models/css_color.dart';
import '../utils/color_utils.dart';

class ColoredScreen extends StatelessWidget {
  const ColoredScreen({super.key, required this.cssColor});

  final CssColor cssColor;

  void shareColor() {
    SharePlus.instance.share(
      ShareParams(text: 'check out my website https://example.com'),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Cache the text color, as we use it in 2 places
    final textColor = contrastColor(cssColor.color);

    return Scaffold(
      backgroundColor: cssColor.color,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: shareColor,
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            Text(
              cssColor.colorName,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: textColor,
              ),
            ),
            Text(
              toHex(cssColor.color),
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
