part of 'create_edit_category_page.dart';

class _CreateEditCategoryPageView
    extends WidgetView<CreateEditCategoryPage, _CreateEditCategoryPageState> {
  _CreateEditCategoryPageView(_CreateEditCategoryPageState state)
      : super(state);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: _buildAppBar(theme, context),
      body: Container(
        padding: EdgeInsets.all(
          SizeConfig.defaultPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Form(
                    key: state._formKey,
                    child: _buildInputFields(theme, context),
                  ),
                ],
              ),
            ),
            _buildBottomButtons(theme, context),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.colorScheme.background,
      toolbarHeight: 60,
      leadingWidth: SizeConfig.appBarLeadingWidth,
      leading: AppBarLeadingWidget(
        context: context,
        icon: IconMapper(context)
            .arrowBackIcon(color: theme.colorScheme.appBarLeadingWidget),
        onTap: () => Navigator.of(context).pop(),
      ),
      actions: (widget.initCategory != null)
          ? [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => state.handleDeleteCategory(),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(
                        right: SizeConfig.defaultPadding,
                        left: SizeConfig.defaultPadding / 3,
                        top: SizeConfig.defaultPadding / 3,
                        bottom: SizeConfig.defaultPadding / 3),
                    child: Text(
                      'Delete',
                      style: theme.textTheme.headline6?.copyWith(
                        color: theme.colorScheme.deleteIcon,
                      ),
                      textScaleFactor: SizeConfig.textScale,
                    ),
                  ),
                ),
              )
            ]
          : [],
      centerTitle: true,
      elevation: 0,
      title: Container(
        child: Text(
          (widget.initCategory == null) ? 'Create category' : 'Edit category',
          style: theme.textTheme.headline6?.copyWith(
            color: theme.colorScheme.onBackground,
          ),
          textScaleFactor: SizeConfig.textScale,
        ),
      ),
    );
  }

  Column _buildInputFields(ThemeData theme, BuildContext context) {
    return Column(
      children: [
        TextInputField(
          hint: 'Category name',
          initialValue: state._categoryName,
          isError: state._isEmptyName,
          focusNode: state._focusNode,
          onSaved: (String value) => state.handleNameInput(value),
          onFieldSubmitted: () => FocusScope.of(context).unfocus(),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Color',
                style: theme.textTheme.bodyText1?.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
                textScaleFactor: SizeConfig.scale,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => state.handleOpenColorPicker(context),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: state._selectedColorName != null
                        ? ColorConverter().getColor(state._selectedColorName!)
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Icon',
                style: theme.textTheme.bodyText1?.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
                textScaleFactor: SizeConfig.scale,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => state.handleOpenIconPicker(context),
                child: Container(
                  width: 30,
                  height: 30,
                  child: Center(
                    child: state._selectedIconName != null
                        ? IconMapper(context).getSvgIconByName(
                            state._selectedIconName!,
                            theme.colorScheme.onBackground,
                          )
                        : Container(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
        state._isEmptyName
            ? Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Please fill in the fields above',
                  style: theme.textTheme.bodyText1?.copyWith(
                      color: theme.colorScheme.redMain,
                      fontWeight: FontWeight.w200),
                  textScaleFactor: SizeConfig.textScale,
                ),
              )
            : Container(),
        CustomButton(
          title: 'Done',
          textColor: state._isEmptyName
              ? theme.colorScheme.redMain
              : theme.colorScheme.onBackground,
          borderColor: state._isEmptyName
              ? theme.colorScheme.redMain
              : theme.colorScheme.buttonBorder,
          onTap: () => state.handleDoneButton(context),
        ),
        SizedBox(height: 10),
        CustomButton(
          title: 'Cancel',
          textColor: theme.colorScheme.onBackground,
          borderColor: Colors.transparent,
          onTap: () => state.handleCancelButton(context),
        ),
      ],
    );
  }
}
