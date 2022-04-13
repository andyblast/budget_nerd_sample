part of 'color_picker_page.dart';

class _ColorPickerPageView
    extends WidgetView<ColorPickerPage, _ColorPickerPageState> {
  _ColorPickerPageView(_ColorPickerPageState state) : super(state);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        toolbarHeight: 60,
        leadingWidth: SizeConfig.appBarLeadingWidth,
        leading: AppBarLeadingWidget(
          context: context,
          onTap: () => Navigator.of(context).pop(),
          icon: IconMapper(context)
              .arrowBackIcon(color: theme.colorScheme.appBarLeadingWidget),
        ),
        centerTitle: true,
        elevation: 0,
        title: Container(
          child: Text(
            'Color',
            style: theme.textTheme.headline6?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
            textScaleFactor: SizeConfig.textScale,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultPadding,
          right: SizeConfig.defaultPadding,
          bottom: SizeConfig.defaultPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                padding: const EdgeInsets.only(bottom: 20),
                children: state._defaultColors
                    .map(
                      (Color color) => InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () => state._handleSetColor(color),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          child: (state._selectedColor == color)
                              ? Center(
                                  child: FaIcon(FontAwesomeIcons.check),
                                )
                              : Container(),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            _buildBottomButtons(theme, context),
          ],
        ),
      ),
    );
  }

  Column _buildBottomButtons(ThemeData theme, BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: theme.colorScheme.background,
                  blurRadius: 10,
                  spreadRadius: 10)
            ],
          ),
        ),
        CustomButton(
          title: 'Done',
          textColor: theme.colorScheme.onBackground,
          borderColor: theme.colorScheme.buttonBorder,
          onTap: () => state._handleDoneButton(context),
        ),
        SizedBox(height: 10),
        CustomButton(
          title: 'Cancel',
          textColor: theme.colorScheme.onBackground,
          borderColor: Colors.transparent,
          onTap: () => state._handleCancelButton(context),
        ),
      ],
    );
  }
}
