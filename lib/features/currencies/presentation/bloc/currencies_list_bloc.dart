import 'package:bloc/bloc.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/currencies/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currencies_list_bloc.freezed.dart';

@freezed
class CurrenciesListEvent with _$CurrenciesListEvent {
  const CurrenciesListEvent._();

  const factory CurrenciesListEvent.read() = ReadCurrenciesListEvent;
}

@freezed
class CurrenciesListState with _$CurrenciesListState {
  const CurrenciesListState._();

  const factory CurrenciesListState.empty() = EmptyCurrenciesListState;

  const factory CurrenciesListState.loading() = LoadingCurrenciesListState;

  const factory CurrenciesListState.loaded(List<CurrencyModel> currenciesList,
          final Map<String, CurrencyModel> currenciesHash) =
      LoadedCurrenciesListState;

  const factory CurrenciesListState.failure(String message) =
      FailureCurrenciesListState;
}

class CurrenciesListBloc
    extends Bloc<CurrenciesListEvent, CurrenciesListState> {
  final GetLocalCurrenciesUseCase _getLocalCurrenciesUseCase;

  CurrenciesListBloc(
      {required GetLocalCurrenciesUseCase getLocalCurrenciesUseCase})
      : _getLocalCurrenciesUseCase = getLocalCurrenciesUseCase,
        super(const EmptyCurrenciesListState());

  @override
  Stream<CurrenciesListState> mapEventToState(CurrenciesListEvent event) =>
      event.when<Stream<CurrenciesListState>>(
        read: _read,
      );

  Stream<CurrenciesListState> _read() async* {
    yield LoadingCurrenciesListState();
    final failureOrCurrencies = await _getLocalCurrenciesUseCase(NoParams());

    yield failureOrCurrencies.fold(
      (_) => FailureCurrenciesListState(''),
      (currencies) => LoadedCurrenciesListState(
        currencies,
        {for (var currency in currencies) currency.code: currency},
      ),
    );
  }
}
