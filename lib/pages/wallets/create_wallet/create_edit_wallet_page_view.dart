part of 'create_edit_wallet_page.dart';

class _CreateEditWalletPageView
    extends WidgetView<CreateEditWalletPage, _CreateEditWalletPageState> {
  _CreateEditWalletPageView(_CreateEditWalletPageState state) : super(state);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final theme = Theme.of(context);

    return BlocBuilder<CurrentUserBloc, CurrentUserState>(
      builder: (context, currentUserState) {
        return BlocBuilder<CurrenciesListBloc, CurrenciesListState>(
            builder: (context, currenciesState) {
          if (currentUserState is LoadedCurrentUserState &&
              currenciesState is LoadedCurrenciesListState) {
            final _currenciesHash = currenciesState.currenciesHash;
            late CurrencyModel _currency;

            if (widget.initWallet != null) {
              final code = widget.initWallet!.currencyCode;
              _currency = _currenciesHash[code]!;
            } else {
              _currency = state._selectedCurrency ??
                  _currenciesHash[currentUserState.currentUser.homeCurrency]!;
            }

            return Scaffold(
              backgroundColor: theme.colorScheme.background,
              appBar: AppBar(
                backgroundColor: theme.colorScheme.background,
                toolbarHeight: 60,
                leadingWidth: SizeConfig.appBarLeadingWidth,
                leading: AppBarLeadingWidget(
                  context: context,
                  onTap: () => Navigator.of(context).pop(),
                  icon: IconMapper(context).arrowBackIcon(
                      color: theme.colorScheme.appBarLeadingWidget),
                ),
                centerTitle: true,
                elevation: 0,
                title: Container(
                  child: Text(
                    widget.initWallet != null ? 'Edit wallet' : 'Create wallet',
                    style: theme.textTheme.headline6?.copyWith(
                      color: theme.colorScheme.onBackground,
                    ),
                    textScaleFactor: SizeConfig.textScale,
                  ),
                ),
              ),
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
                            child: _buildInputFields(
                              context,
                              _currency,
                            ),
                          )
                        ],
                      ),
                    ),
                    _buildBottomButtons(theme, context, _currency),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        });
      },
    );
  }

  Column _buildInputFields(
      BuildContext context, CurrencyModel selectedCurrency) {
    return Column(
      children: [
        TextInputField(
          focusNode: state._focusNode,
          hint: 'Wallet name',
          initialValue: widget.initWallet?.name ?? '',
          isError: state._isEmptyName,
          onSaved: (String value) => state.handleNameInput(value),
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
        ),
        SizedBox(height: 20),
        if (widget.initWallet == null)
          TextInputField(
            hint: 'Budget',
            initialValue: (widget.initWallet != null)
                ? widget.initWallet?.balance.toString()
                : '',
            keyboardType: TextInputType.number,
            onSaved: (String value) => state.handleBudgetInput(value),
            onFieldSubmitted: () => FocusScope.of(context).unfocus(),
          ),
        SizedBox(height: 10),
        if (widget.initWallet == null)
          SelectCurrencyField(
            selectedCurrency: selectedCurrency,
            onCurrencySelect: (CurrencyModel newCurrency) =>
                state.handleCurrencySelect(newCurrency),
            onPageOpen: () => FocusScope.of(context).unfocus(),
          ),
      ],
    );
  }

  Column _buildBottomButtons(
    ThemeData theme,
    BuildContext context,
    CurrencyModel selectedCurrency,
  ) {
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
          onTap: () => state.handleDoneButton(context, selectedCurrency),
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
