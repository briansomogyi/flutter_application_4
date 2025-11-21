import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;
import '../data/css_colors.dart';
import '../widgets/css_color_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.homeScreenTitle),
      ),
      body: ListView.builder(
        itemCount: cssColors.length,
        itemBuilder: (BuildContext context, int index) {
          return CssColorListItem(cssColor: cssColors[index]);
        },
      ),
    );
  }
}
