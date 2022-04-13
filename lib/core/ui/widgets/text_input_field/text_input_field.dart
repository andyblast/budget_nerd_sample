import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:flutter/material.dart';

part 'text_input_field_view.dart';

class TextInputField extends StatefulWidget {
  final String hint;
  final String? initialValue;
  final bool? isError;
  final Function(String) onSaved;
  final Function()? onEditingComplete;
  final Function()? onFieldSubmitted;
  final TextInputType? keyboardType;
  final bool? focus;
  final FocusNode? focusNode;

  const TextInputField({
    Key? key,
    required this.onSaved,
    required this.hint,
    this.keyboardType = TextInputType.multiline,
    this.initialValue = '',
    this.isError = false,
    this.focus = false,
    this.focusNode,
    this.onEditingComplete,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  _TextInputFieldState createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField>
    with TickerProviderStateMixin {
  final FocusNode _focus = FocusNode();
  bool isValidName = true;
  bool isValidBudget = true;

  bool hasFocus = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) => _TextInputFieldView(this);
}
