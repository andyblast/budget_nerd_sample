part of 'transactions_list_page.dart';

class _TransactionsListPageView
    extends WidgetView<TransactionsListPage, _TransactionsListPageState> {
  _TransactionsListPageView(_TransactionsListPageState state) : super(state);
  @override
  Widget build(BuildContext context) {
    return (widget.selectedWallet == null)
        ? Container()
        : (widget.transactions.isNotEmpty)
            ? ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: widget.groupedTransactions.length,
                itemBuilder: (context, index) {
                  final mapEntry =
                      widget.groupedTransactions.entries.elementAt(index);

                  final date = mapEntry.key;
                  final transactions = mapEntry.value;

                  return StickyHeader(
                    header: _renderDateLabel(context, date),
                    content: Column(
                      children: [
                        ...transactions.map(
                          (transaction) => TransactionsListItem(
                            transaction: transaction,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            : Center(
                child: Text(
                  "You don't have any transactions yet",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              );
  }

  Widget _renderDateLabel(BuildContext context, String date) {
    var currentDate = DateFormat('dd MMM, yyyy').format(DateTime.now());
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.defaultPadding),
      child: currentDate == date
          ? _buildTransactionsLabel(context, 'Today')
          : _buildTransactionsLabel(context, date),
    );
  }

  Widget _buildTransactionsLabel(BuildContext context, String text) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: theme.colorScheme.background,
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.background,
                  spreadRadius: 10,
                  blurRadius: 10,
                )
              ],
            ),
            child: Text(
              text,
              style: theme.textTheme.bodyText1?.copyWith(
                color: theme.colorScheme.onBackground,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.topLeft,
          ),
        ],
      ),
    );
  }
}
