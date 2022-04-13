import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';

class AppBarIcon extends StatelessWidget {
  final Widget icon;
  final String? iconText;
  final Function onTap;

  AppBarIcon({
    required this.icon,
    this.iconText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultPadding,
          right: SizeConfig.defaultPadding,
        ),
        child: (iconText != null)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(height: 3),
                  Text(
                    iconText!,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Theme.of(context).colorScheme.appBarText,
                        ),
                    textScaleFactor: SizeConfig.textScale,
                  ),
                ],
              )
            : icon,
      ),
    );
  }
}
