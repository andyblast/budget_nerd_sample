// import 'package:budget_nerd/core/ui/forms/index.dart';
// import 'package:budget_nerd/features/categories/presentation/bloc/categories_list_bloc.dart';
// import 'package:budget_nerd/features/wallets/presentation/bloc/selected_wallet/selected_wallet_bloc.dart';
// import 'package:budget_nerd/injection_container.dart';
// import 'package:budget_nerd/pages/transactions/create_transaction/create_transaction_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class CreateTransactionButton extends StatefulWidget {
//   const CreateTransactionButton({Key? key}) : super(key: key);

//   @override
//   State<CreateTransactionButton> createState() =>
//       _CreateTransactionButtonState();
// }

// class _CreateTransactionButtonState extends State<CreateTransactionButton> {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<CategoriesListBloc>(
//           create: (context) =>
//               sl<CategoriesListBloc>()..add(ReadCategoriesListEvent()),
//         ),
//         BlocProvider<SelectedWalletBloc>(
//           create: (BuildContext context) =>
//               sl<SelectedWalletBloc>()..add(WatchSelectedWalletEvent()),
//         ),
//       ],
//       child: CreateTransactionButtonBody(),
//     );
//   }
// }

// class CreateTransactionButtonBody extends StatelessWidget {
//   const CreateTransactionButtonBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CategoriesListBloc, CategoriesListState>(
//         builder: (context, categoriesState) {
//       return BlocBuilder<SelectedWalletBloc, SelectedWalletState>(
//           builder: (context, walletState) {
//         if (walletState is LoadedSelectedWalletState &&
//             categoriesState is LoadedCategoriesListState) {
//           return DottedButton(
//             onTap: () async {
//               showModalBottomSheet(
//                 backgroundColor: Colors.transparent,
//                 isScrollControlled: true,
//                 elevation: 0,
//                 context: context,
//                 builder: (context) {
//                   return CreateTransactionPage(
//                     categoryModel: categoriesState.categoriesList.first,
//                     selectedWallet: walletState.selectedWallet,
//                   );
//                 },
//               );
//             },
//             title: 'Create transaction',
//           );
//         } else {
//           return DottedButton(
//             onTap: () {},
//             title: '',
//           );
//         }
//       });
//     });
//   }
// }
