import 'package:flutter/material.dart';

abstract class DialogWindow {
  Future<bool?> showPlatformConfirmationDialog({
    required BuildContext context,
    required String title,
    String? desc,
    required String cancelText,
    required String okText,
    required Function(BuildContext) onOkTap,
    required Function(BuildContext) onCancelTap,
  });
}
