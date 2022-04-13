import 'package:flutter/material.dart';

class AppBarLeadingWidget extends StatelessWidget {
  final Function onTap;
  final BuildContext context;
  final Widget icon;

  const AppBarLeadingWidget({
    Key? key,
    required this.context,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: IconButton(
          padding: EdgeInsets.only(left: 30, right: 30),
          iconSize: 24,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () => onTap(),
          icon: icon,
        ),
      ),
    );
  }
}
