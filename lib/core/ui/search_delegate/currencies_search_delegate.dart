import 'package:dartz/dartz.dart' as Dartz;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';

import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/currencies/domain/index.dart';
import 'package:theme_provider/theme_provider.dart';

import 'search.dart' as search;

class CurrenciesSearchDelegate extends search.SearchDelegate<CurrencyModel> {
  final String selectedCurrencyCode;

  CurrenciesSearchDelegate({
    required this.selectedCurrencyCode,
  }) : super(searchFieldLabel: 'Search...');

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = ThemeProvider.themeOf(context).data;
    return theme.copyWith(
      primaryColor: theme.colorScheme.primary,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    final theme = ThemeProvider.themeOf(context).data;
    return [
      Container(
        width: 24,
        height: 24,
        child: query == ''
            ? IconButton(
                key: ValueKey<int>(0),
                padding: EdgeInsets.zero,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: FaIcon(
                  FontAwesomeIcons.search,
                  size: 16,
                  color: theme.colorScheme.onBackground,
                ),
                onPressed: () {},
              )
            : IconButton(
                key: ValueKey<int>(1),
                padding: EdgeInsets.zero,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: FaIcon(
                  FontAwesomeIcons.solidTimesCircle,
                  size: 16,
                  color: theme.colorScheme.onBackground,
                ),
                onPressed: () {
                  query = '';
                },
              ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    final theme = ThemeProvider.themeOf(context).data;
    return IconButton(
      color: theme.colorScheme.onPrimary,
      icon: FaIcon(FontAwesomeIcons.search),
      onPressed: () {
        // close(context, null);
      },
    );
  }

  Widget buildMatchingSuggestions(BuildContext context) {
    final _controller = ScrollController();
    final theme = ThemeProvider.themeOf(context).data;
    return FutureBuilder<Dartz.Either<Failure, List<CurrencyModel>>>(
        future: GetLocalCurrenciesUseCase(CurrenciesRepositoryImpl(
                localDataSource: CurrenciesLocalDataSourceImpl()))(
            NoParams()), // a previously-obtained Future<String> or null
        builder: (BuildContext context,
            AsyncSnapshot<Dartz.Either<Failure, List<CurrencyModel>>>
                snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            late final List<CurrencyModel> currencies;
            snapshot.data!.fold((l) {
              currencies = [];
            }, (r) {
              currencies = r
                  .where((currency) =>
                      currency.code
                          .toLowerCase()
                          .contains(query.toLowerCase()) |
                      currency.name.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            });
            // var currencies = snapshot.data
            //     .where((currency) =>
            //         currency.code.toLowerCase().contains(query.toLowerCase()) |
            //         currency.name.toLowerCase().contains(query.toLowerCase()))
            //     .toList();

            return Container(
              color: theme.colorScheme.background,
              child: ShaderMask(
                shaderCallback: (Rect rect) {
                  return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.white
                      ],
                      stops: [
                        0.0,
                        0.1,
                        0.9,
                        1.0
                      ]).createShader(rect);
                },
                blendMode: BlendMode.dstOut,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 50),
                    ListView.builder(
                      shrinkWrap: true,
                      // itemExtent: 45,
                      itemCount: currencies.length,
                      controller:
                          _controller, //ModalScrollController.of(context),
                      itemBuilder: (context, index) {
                        var result = currencies[index];
                        return _buildListItem(
                          currency: result,
                          theme: theme,
                          context: context,
                          currencies: currencies,
                          index: index,
                        );
                      },
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        });
  }

  Widget _buildListItem({
    required CurrencyModel currency,
    required ThemeData theme,
    required BuildContext context,
    required List<CurrencyModel> currencies,
    required int index,
  }) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () => close(context, currencies[index]),
      child: Container(
        height: 40,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    currency.name,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: theme.textTheme.headline3?.copyWith(
                      color: theme.colorScheme.onBackground,
                      fontWeight: selectedCurrencyCode == currency.code
                          ? FontWeight.w600
                          : FontWeight.w200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    currency.code,
                    style: theme.textTheme.headline3?.copyWith(
                      color: theme.colorScheme.onBackground,
                      fontWeight: selectedCurrencyCode == currency.code
                          ? FontWeight.w400
                          : FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildMatchingSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildMatchingSuggestions(context);
  }
}

class CurrenciesSearchDelegateArgs {
  final String selectedCurrencyCode;

  CurrenciesSearchDelegateArgs(this.selectedCurrencyCode);
}
