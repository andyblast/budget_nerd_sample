import 'package:budget_nerd/core/ui/forms/index.dart';
import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:budget_nerd/core/ui/widgets/app_bar_leading_widget.dart';
import 'package:budget_nerd/features/categories/domain/usecases/index.dart';
import 'package:budget_nerd/pages/color_picker/color_picker_page.dart';
import 'package:budget_nerd/pages/icon_picker/icon_picker_page.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/dialog_window/dialog_window.dart';
import 'package:budget_nerd/core/ui/widgets/text_input_field/text_input_field.dart';
import 'package:budget_nerd/core/utils/index.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/data/index.dart';
import 'package:budget_nerd/features/categories/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';

part 'create_edit_category_page_view.dart';

class CreateEditCategoryPage extends StatefulWidget {
  final CategoryModel? initCategory;
  final CategoryTypes categoryType;

  const CreateEditCategoryPage({
    Key? key,
    this.initCategory,
    required this.categoryType,
  }) : super(key: key);
  @override
  _CreateEditCategoryPageState createState() => _CreateEditCategoryPageState();
}

class _CreateEditCategoryPageState extends State<CreateEditCategoryPage> {
  final _formKey = GlobalKey<FormState>();
  final _focusNode = FocusNode();

  bool _isEmptyName = false;
  String _categoryName = '';
  String? _selectedColorName;
  String? _selectedIconName;

  void _init() async {
    if (widget.initCategory == null) {
      setState(() {
        _selectedColorName = ColorConverter().getRandomColorName();
      });
      await () async {
        await Future.delayed(Duration.zero);
        setState(() {
          _selectedIconName = IconMapper(context).getDefaultIconName();
        });
      }();
    } else {
      _selectedColorName = widget.initCategory!.color;
      _selectedIconName = widget.initCategory!.icon;
      _categoryName = widget.initCategory!.title;
    }

    await Future.delayed(Duration(milliseconds: 200));
    _focusNode.requestFocus();
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  void handleNameInput(String value) {
    setState(() => _categoryName = value);
  }

  void handleOpenColorPicker(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final colorResult = await Navigator.pushNamed(
      context,
      '/colorPickerPage',
      arguments: ColorPickerPageArgs(colorName: _selectedColorName!),
    );
    if (colorResult != null) {
      setState(() {
        _selectedColorName =
            ColorConverter().getColorsName(colorResult as Color);
      });
    }
  }

  void handleOpenIconPicker(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final iconResult = await Navigator.pushNamed(
      context,
      '/iconPickerPage',
      arguments: IconPickerPageArgs(iconName: _selectedIconName!),
    );
    if (iconResult != null) {
      setState(() {
        _selectedIconName = iconResult as String;
      });
    }
  }

  void handleCancelButton(BuildContext context) {
    Navigator.pop(context);
  }

  void handleDoneButton(BuildContext context) {
    _formKey.currentState?.save();

    if (_categoryName.isNotEmpty) {
      setState(() => _isEmptyName = false);
      (widget.initCategory == null)
          ? _handleCreateCategory(context)
          : _handleSaveCategory();
    } else {
      setState(() => _isEmptyName = true);
    }
  }

  void _handleCreateCategory(BuildContext context) async {
    final newCategory = CategoryModel(
      title: _categoryName,
      type: widget.categoryType,
      color: _selectedColorName!,
      icon: _selectedIconName!,
    );
    await sl<CreateCategoryUseCase>()(
        CreateCategoryUseCaseParams(category: newCategory));

    Navigator.pop(context);
  }

  void _handleSaveCategory() async {
    final updatedCategory = widget.initCategory!.copyWith(
      title: _categoryName,
      color: _selectedColorName,
      icon: _selectedIconName,
    );

    await sl<UpdateCategoryUseCase>()(
        UpdateCategoryUseCaseParams(category: updatedCategory));

    Navigator.pop(context);
  }

  Future<bool?> handleDeleteCategory() async {
    FocusScope.of(context).unfocus();

    return sl<DialogWindow>().showPlatformConfirmationDialog(
      context: context,
      title: 'Delete category',
      desc: 'Sure you want to delete ' '"${widget.initCategory!.title}"?',
      cancelText: 'Cancel',
      okText: 'Delete',
      onOkTap: (dialogContext) async {
        await sl<DeleteCategoryUseCase>()(
            DeleteCategoryUseCaseParams(category: widget.initCategory!));

        Navigator.of(dialogContext).pop();
        Navigator.of(context).pop();
      },
      onCancelTap: (dialogContext) {
        Navigator.of(dialogContext).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) => _CreateEditCategoryPageView(this);
}

class CreateEditCategoryPageArgs {
  final CategoryModel? initCategory;
  final CategoryTypes categoryType;

  CreateEditCategoryPageArgs({
    required this.categoryType,
    this.initCategory,
  });
}
