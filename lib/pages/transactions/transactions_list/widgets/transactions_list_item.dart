import 'package:budget_nerd/core/formatter/amount_formatter.dart';
import 'package:budget_nerd/core/ui/dialog_window/index.dart';
import 'package:budget_nerd/core/utils/index.dart';
import 'package:budget_nerd/db/tables/transactions.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/transactions/domain/usecases/index.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/index.dart';
import 'package:budget_nerd/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TransactionsListItem extends StatefulWidget {
  final TransactionModel transaction;

  TransactionsListItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  State<TransactionsListItem> createState() => _TransactionsListItemState();
}

class _TransactionsListItemState extends State<TransactionsListItem> {
  String _getAmount() {
    var type = widget.transaction.type == TransactionTypes.income ? '+ ' : '- ';
    var value =
        '${formatAmount(widget.transaction.amount)} ${widget.transaction.currencySymbolNative}';

    return type + value;
  }

  String? _getAmountInWalletCurrency() {
    if (widget.transaction.amountInWalletCurrency !=
        widget.transaction.amount) {
      final type =
          widget.transaction.type == TransactionTypes.income ? '+ ' : '- ';

      final amount = widget.transaction.amountInWalletCurrency != null
          ? widget.transaction.amountInWalletCurrency!.toStringAsFixed(2)
          : widget.transaction.amountInWalletCurrency;

      final value =
          '$amount ${widget.transaction.wallet!.currencySymbolNative}';

      return type + value;
    }
    return null;
  }

  Future<bool?> _handleDeleteDialog(BuildContext context) {
    return sl<DialogWindow>().showPlatformConfirmationDialog(
      context: context,
      title: 'Delete transaction',
      desc: 'Sure you want to delete this transaction?',
      cancelText: 'Cancel',
      okText: 'Delete',
      onOkTap: (dialogContext) async {
        await sl<DeleteTransactionUseCase>()(
            DeleteTransactionUseCaseParams(transaction: widget.transaction));

        await sl<UpdateBalanceUseCase>()(
          UpdateBalanceUseCaseParams(wallet: widget.transaction.wallet!),
        );

        Navigator.of(dialogContext).pop();
      },
      onCancelTap: (dialogContext) {
        Navigator.of(dialogContext).pop();
      },
    );
  }

  void _handleOpenTransactionPage() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      elevation: 0,
      context: context,
      builder: (context) {
        return Container();
        // return CreateTransactionPage(
        //   transactionModel: widget.transaction,
        // );
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final icons = IconMapper(context);

    final colorConverter = ColorConverter();
    final amount = _getAmount();
    final walletAmount = _getAmountInWalletCurrency();

    return Container(
      margin:
          EdgeInsets.only(top: 5, bottom: 5, right: SizeConfig.defaultPadding),
      child: Slidable(
        key: const ValueKey(0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          margin: EdgeInsets.only(left: SizeConfig.defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              width: 1,
              color: theme.colorScheme.buttonBorder,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.background,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(
                          width: 2,
                          color: colorConverter
                              .getColor(widget.transaction.category!.color),
                          style: BorderStyle.solid,
                        ),
                        //
                      ),
                      child: Center(
                        child: icons.getSvgIconByName(
                          widget.transaction.category!.icon,
                          theme.colorScheme.onBackground,
                          // Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.transaction.category!.title,
                            style: theme.textTheme.bodyText1?.copyWith(
                              color: theme.colorScheme.onBackground,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textScaleFactor: SizeConfig.textScale,
                          ),
                          SizedBox(height: 5),
                          Text(
                            widget.transaction.wallet!.name,
                            style: theme.textTheme.bodyText2?.copyWith(
                              fontSize: 14,
                            ),
                            textScaleFactor: SizeConfig.textScale,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color:
                            widget.transaction.type == TransactionTypes.expense
                                ? Colors.red
                                : Colors.green,
                      ),
                    ),
                    if (walletAmount != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          walletAmount,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: widget.transaction.type ==
                                    TransactionTypes.expense
                                ? Colors.red
                                : Colors.green,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        endActionPane: ActionPane(
          motion: BehindMotion(),
          children: [
            SlidableAction(
              onPressed: (context) => _handleOpenTransactionPage(),
              foregroundColor: theme.colorScheme.editIcon,
              backgroundColor: theme.colorScheme.background,
              icon: Icons.edit,
            ),
            SlidableAction(
              onPressed: (context) => _handleDeleteDialog(context),
              foregroundColor: theme.colorScheme.deleteIcon,
              backgroundColor: theme.colorScheme.background,
              icon: Icons.delete,
            ),
          ],
        ),
      ),
    );
  }
}
