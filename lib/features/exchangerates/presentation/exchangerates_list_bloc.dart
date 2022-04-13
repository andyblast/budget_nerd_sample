import 'package:bloc/bloc.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/exchangerates/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/usecases/usecase.dart';

part 'exchangerates_list_bloc.freezed.dart';

@freezed
class ExchangeRatesListEvent with _$ExchangeRatesListEvent {
  const ExchangeRatesListEvent._();

  const factory ExchangeRatesListEvent.read() = GetExchangeRatesEvent;
}

@freezed
class ExchangeRatesListState with _$ExchangeRatesListState {
  const ExchangeRatesListState._();

  const factory ExchangeRatesListState.initial() =
      InitialExchangeRatesListState;

  const factory ExchangeRatesListState.loading() =
      LoadingExchangeRatesListState;

  const factory ExchangeRatesListState.loaded(ExchangeRateModel rates) =
      LoadedExchangeRatesListState;

  const factory ExchangeRatesListState.failure() =
      FailureExchangeRatesListState;
}

class ExchangeRatesListBloc
    extends Bloc<ExchangeRatesListEvent, ExchangeRatesListState> {
  final GetLocalExchangeRatesUseCase _getLocalExchangeRatesUseCase;

  ExchangeRatesListBloc(
      {required GetLocalExchangeRatesUseCase getLocalExchangeRatesUseCase})
      : _getLocalExchangeRatesUseCase = getLocalExchangeRatesUseCase,
        super(const InitialExchangeRatesListState());

  @override
  Stream<ExchangeRatesListState> mapEventToState(
          ExchangeRatesListEvent event) =>
      event.when<Stream<ExchangeRatesListState>>(
        read: _read,
      );

  Stream<ExchangeRatesListState> _read() async* {
    try {
      yield LoadingExchangeRatesListState();

      final ratesOrFailure = await _getLocalExchangeRatesUseCase(NoParams());

      yield ratesOrFailure.fold(
        (_) => FailureExchangeRatesListState(),
        (ExchangeRateModel rates) => LoadedExchangeRatesListState(rates),
      );
    } catch (e) {
      yield FailureExchangeRatesListState();
    }
  }
}
