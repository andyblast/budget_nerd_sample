import 'package:budget_nerd/core/ui/forms/index.dart';
import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:budget_nerd/core/ui/widgets/app_bar_leading_widget.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/core/utils/index.dart';

part 'icon_picker_page_view.dart';

class IconPickerPage extends StatefulWidget {
  final String iconName;

  const IconPickerPage({Key? key, required this.iconName}) : super(key: key);

  @override
  _IconPickerPageState createState() => _IconPickerPageState();
}

class _IconPickerPageState extends State<IconPickerPage> {
  var _defaultIcons = <String>[];
  late String _selectedIconName;

  void _handleCancelButton(BuildContext context) {
    Navigator.pop(context);
  }

  void _handleDoneButton(BuildContext context) {
    Navigator.pop(context, _selectedIconName);
  }

  void _handleSetIconName(String iconName) {
    setState(() {
      _selectedIconName = iconName;
    });
  }

  void _init() async {
    await () async {
      await Future.delayed(Duration.zero);
      setState(() {
        _defaultIcons = IconMapper(context).getAllSvgIconsName();
        _selectedIconName = widget.iconName;
      });
    }();
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) => _IconPickerPageView(this);
}

class IconPickerPageArgs {
  final String iconName;

  IconPickerPageArgs({required this.iconName});
}
