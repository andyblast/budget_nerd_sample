part of 'text_input_field.dart';

class _TextInputFieldView
    extends WidgetView<TextInputField, _TextInputFieldState> {
  _TextInputFieldView(_TextInputFieldState state) : super(state);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final theme = Theme.of(context);

    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  keyboardType: widget.keyboardType,
                  cursorColor: theme.colorScheme.onBackground,
                  initialValue: widget.initialValue,
                  style: theme.textTheme.bodyText1?.copyWith(
                    decoration: TextDecoration.none,
                  ),
                  autofocus: widget.focus!,
                  focusNode: widget.focusNode ?? state._focus,
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: widget.hint,
                    hintStyle: theme.textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w200,
                      color: widget.isError!
                          ? theme.colorScheme.redMain
                          : theme.colorScheme.onBackground.withOpacity(0.5),
                    ),
                  ),
                  textInputAction: (widget.onEditingComplete == null)
                      ? TextInputAction.next
                      : TextInputAction.done,
                  onSaved: (String? value) => widget.onSaved(value ?? ''),
                  onEditingComplete: () => (widget.onEditingComplete != null)
                      ? widget.onEditingComplete!()
                      : {},
                  onFieldSubmitted: (_) => (widget.onFieldSubmitted != null)
                      ? widget.onFieldSubmitted!()
                      : {},
                ),
              )),
            ],
          ),
          SizedBox(height: 7),
          Container(
            width: double.infinity,
            height: 0.5,
            color: widget.isError!
                ? theme.colorScheme.redMain
                : theme.colorScheme.onBackground,
          )
        ],
      ),
    );
  }
}
