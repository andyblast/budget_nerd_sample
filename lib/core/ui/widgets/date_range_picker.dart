import 'package:budget_nerd/core/formatter/date_formatter.dart';
import 'package:budget_nerd/core/ui/animations/zoom_tap_animation.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:intl/date_symbol_data_local.dart';

class DateRangePicker extends StatefulWidget {
  final UserModel currentUser;

  DateRangePicker({required this.currentUser});

  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  CarouselController _carouselController = CarouselController();

  var _dates = <DateTime>[];
  late int _currentIndex;

  void _handleNextMonth() async {
    if (_currentIndex - 1 >= 0) {
      setState(() => _currentIndex = _currentIndex - 1);
      await _carouselController.animateToPage(_currentIndex);

      _setSelectedDateByCarouselIndex();
    } else {
      await _carouselController.animateToPage(_currentIndex - 1);
    }
  }

  void _handlePreviousMonth() async {
    if (_currentIndex + 1 < _dates.length) {
      setState(() => _currentIndex = _currentIndex + 1);
      await _carouselController.animateToPage(_currentIndex);

      _setSelectedDateByCarouselIndex();
    } else {
      await _carouselController.animateToPage(_currentIndex + 1);
    }
  }

  void _setSelectedDateByCarouselIndex() async {
    final newDate = _dates.elementAt(_currentIndex);

    final userToUpdate = widget.currentUser.copyWith(
      selectedDate: newDate,
      selectedWalletId: widget.currentUser.selectedWalletId,
    );

    await sl<UpdateCurrentUserUseCase>()(
        UpdateCurrentUserUseCaseParams(user: userToUpdate));
  }

  int _getCarouselIndexBySelectedDate() {
    final date = widget.currentUser.selectedDate;
    final index = _dates.indexWhere(
      (element) =>
          (element.year == date!.year) && (element.month == date.month),
    );
    return index;
  }

  List<DateTime> _getDatesForCarousel() {
    return List<DateTime>.generate(24, (index) {
      return DateTime.utc(
        DateTime.now().year,
        DateTime.now().month - index,
        DateTime.now().day,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();

    _dates = _getDatesForCarousel();
    _currentIndex = _getCarouselIndexBySelectedDate();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.separator,
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultPadding,
          right: SizeConfig.defaultPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ZoomTapAnimation(
              onTap: _handlePreviousMonth,
              child: Container(
                color: Colors.transparent,
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: theme.colorScheme.datePickerArrow,
                  size: theme.textTheme.headline2!.fontSize! * SizeConfig.scale,
                ),
              ),
            ),
            CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                aspectRatio: 5,
                reverse: true,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                initialPage: _currentIndex,
                onPageChanged: (index, reason) {
                  setState(() => _currentIndex = index);
                  _setSelectedDateByCarouselIndex();
                },
              ),
              items: [
                ..._dates.map(
                  (date) => Center(
                    child: Text(
                      yMMMM(date),
                      style: theme.textTheme.headline2?.copyWith(
                        color: theme.colorScheme.datePickerText,
                      ),
                      textScaleFactor: SizeConfig.textScale,
                    ),
                  ),
                ),
              ],
            ),
            ZoomTapAnimation(
              onTap: _handleNextMonth,
              child: Container(
                color: Colors.transparent,
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: theme.colorScheme.datePickerArrow,
                  size: theme.textTheme.headline2!.fontSize! * SizeConfig.scale,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
