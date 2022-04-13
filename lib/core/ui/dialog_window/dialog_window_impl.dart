import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dialog_window.dart';

class DialogWindowImpl extends DialogWindow {
  @override
  Future<bool?> showPlatformConfirmationDialog({
    required BuildContext context,
    required String title,
    String? desc,
    required String cancelText,
    required String okText,
    required Function(BuildContext) onOkTap,
    required Function(BuildContext) onCancelTap,
  }) async {
    final theme = Theme.of(context);
    final textStyle = TextStyle(color: theme.colorScheme.onBackground);

    if (Platform.isIOS) {
      return showCupertinoDialog<bool>(
        context: context,
        builder: (dialogContext) => CupertinoAlertDialog(
          title: Text(title, style: textStyle),
          content: desc != null ? Text(desc, style: textStyle) : null,
          actions: <Widget>[
            TextButton(
              child: Text(cancelText, style: textStyle),
              onPressed: () => onCancelTap(dialogContext),
            ),
            TextButton(
              child: Text(okText, style: textStyle),
              onPressed: () => onOkTap(dialogContext),
            ),
          ],
        ),
      );
    } else {
      return showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(title, style: textStyle),
          content: desc != null ? Text(desc, style: textStyle) : null,
          actions: <Widget>[
            TextButton(
              child: Text(cancelText, style: textStyle),
              onPressed: () => onCancelTap(dialogContext),
            ),
            TextButton(
              child: Text(okText, style: textStyle),
              onPressed: () => onOkTap(dialogContext),
            ),
          ],
        ),
      );
    }
  }
}
