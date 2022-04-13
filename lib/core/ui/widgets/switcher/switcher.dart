import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';

import 'package:theme_provider/theme_provider.dart';

import 'flutter_switch.dart';

part 'switcher_view.dart';

class Switcher extends StatefulWidget {
  final IconData firstIconData;
  final IconData secondIconData;
  final Function onToggle;
  final BuildContext parentContext;
  final bool? status;
  final bool? disabled;

  const Switcher({
    required this.firstIconData,
    required this.secondIconData,
    required this.onToggle,
    required this.parentContext,
    this.status = false,
    this.disabled = false,
  });

  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher>
    with SingleTickerProviderStateMixin {
  final _duration = Duration(milliseconds: 150);

  late AnimationController _animationController;
  late Animation<Color?> _colorFirstIcon;
  late Animation<Color?> _colorSecondIcon;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      value: widget.status! ? 1.0 : 0.0,
      duration: _duration,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void handleOnToggle(bool val) {
    if (!widget.disabled!) {
      val ? _animationController.forward() : _animationController.reverse();
      // setState(() {
      //   _status = val;
      // });
      widget.onToggle(val);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.themeOf(widget.parentContext).data;

    _colorFirstIcon = ColorTween(
      begin: theme.colorScheme.switcherFirstIconInactive,
      end: theme.colorScheme.switcherFirstIconActive,
    ).animate(_animationController);

    _colorSecondIcon = ColorTween(
      begin: theme.colorScheme.switcherSecondIconInactive,
      end: theme.colorScheme.switcherSecondIconActive,
    ).animate(_animationController);

    return _SwitcherView(this);
  }
}
