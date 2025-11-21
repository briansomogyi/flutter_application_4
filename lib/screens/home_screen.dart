import 'package:flutter/material.dart';
import 'package:flutter_application_4/data/css_colors.dart';
import 'package:flutter_application_4/widgets/css_color_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Css Color Viewer'),
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
