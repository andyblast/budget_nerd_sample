part of 'switcher.dart';

class _SwitcherView extends WidgetView<Switcher, _SwitcherState> {
  _SwitcherView(_SwitcherState state) : super(state);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: state._colorSecondIcon,
      builder: (context, child) => AnimatedBuilder(
        animation: state._colorFirstIcon,
        builder: (context, child) => FlutterSwitch(
          width: 48.0,
          height: 24.0,
          toggleSize: 24.0,
          borderRadius: 33.0,
          padding: 0.0,
          value: widget.status!,
          duration: state._duration,
          activeIcon: Icon(
            widget.firstIconData,
            size: 14.0,
            color: state._colorFirstIcon.value,
          ),
          inactiveIcon: Icon(
            widget.secondIconData,
            size: 14.0,
            color: state._colorSecondIcon.value,
          ),
          onToggle: (val) => state.handleOnToggle(val),
        ),
      ),
    );
  }
}
