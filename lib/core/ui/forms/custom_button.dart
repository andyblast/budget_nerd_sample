import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color borderColor;
  final Color textColor;
  final bool needShadow;
  final double height;

  const CustomButton({
    required this.title,
    required this.onTap,
    required this.borderColor,
    required this.textColor,
    this.needShadow = false,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final theme = Theme.of(context);
    return Container(
      child: InkWell(
        onTap: () => onTap(),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: theme.colorScheme.background,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: needShadow
                ? [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      spreadRadius: 4,
                      blurRadius: 4,
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: Text(
              title,
              style: theme.textTheme.bodyText1?.copyWith(
                color: textColor,
              ),
              textScaleFactor: SizeConfig.textScale,
            ),
          ),
        ),
      ),
    );
  }
}
