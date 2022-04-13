import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';

class DottedButton extends StatelessWidget {
  final Function onTap;
  final String title;

  const DottedButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final theme = Theme.of(context);

    return Container(
      height: 60,
      width: double.infinity,
      child: DottedBorder(
        color: theme.colorScheme.buttonBorder,
        borderType: BorderType.RRect,
        dashPattern: [5, 5],
        radius: Radius.circular(20.0),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () => onTap(),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.headline6?.copyWith(
                        color: theme.colorScheme.grayMain,
                      ),
                      textScaleFactor: SizeConfig.textScale,
                    ),
                    Icon(
                      Icons.add,
                      size: 24,
                      color: theme.colorScheme.grayMain,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
