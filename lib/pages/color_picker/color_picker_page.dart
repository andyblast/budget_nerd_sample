import 'package:budget_nerd/core/ui/forms/index.dart';
import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:budget_nerd/core/ui/widgets/app_bar_leading_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/core/utils/index.dart';

part 'color_picker_page_view.dart';

class ColorPickerPage extends StatefulWidget {
  final String colorName;

  const ColorPickerPage({Key? key, required this.colorName}) : super(key: key);

  @override
  _ColorPickerPageState createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  var _defaultColors = <Color>[];
  late Color _selectedColor;

  void _handleCancelButton(BuildContext context) {
    Navigator.pop(context);
  }

  void _handleDoneButton(BuildContext context) {
    Navigator.pop(context, _selectedColor);
  }

  void _handleSetColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    _defaultColors = ColorConverter().getAllColors();
    _selectedColor = ColorConverter().getColor(widget.colorName);
  }

  @override
  Widget build(BuildContext context) => _ColorPickerPageView(this);
}

class ColorPickerPageArgs {
  final String colorName;

  ColorPickerPageArgs({required this.colorName});
}
