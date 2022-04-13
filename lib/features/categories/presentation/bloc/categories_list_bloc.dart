import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/features/categories/data/index.dart';
import 'package:budget_nerd/features/categories/domain/usecases/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_list_bloc.freezed.dart';

@freezed
class CategoriesListEvent with _$CategoriesListEvent {
  const CategoriesListEvent._();

  const factory CategoriesListEvent.read() = ReadCategoriesListEvent;

  const factory CategoriesListEvent.streamSynced(
      List<CategoryModel> categoriesList) = StreamSyncedCategoriesListEvent;
}

@freezed
class CategoriesListState with _$CategoriesListState {
  const CategoriesListState._();

  const factory CategoriesListState.empty() = EmptyCategoriesListState;

  const factory CategoriesListState.loading() = LoadingCategoriesListState;

  const factory CategoriesListState.loaded(List<CategoryModel> categoriesList) =
      LoadedCategoriesListState;

  const factory CategoriesListState.failure(String message) =
      FailureCategoriesListState;
}

class CategoriesListBloc
    extends Bloc<CategoriesListEvent, CategoriesListState> {
  final WatchAllCategoriesUseCase _watchAllCategoriesUseCase;

  CategoriesListBloc({
    required WatchAllCategoriesUseCase watchAllCategoriesUseCase,
  })  : _watchAllCategoriesUseCase = watchAllCategoriesUseCase,
        super(const EmptyCategoriesListState());

  StreamSubscription? _subscription;

  @override
  Stream<CategoriesListState> mapEventToState(CategoriesListEvent event) =>
      event.when<Stream<CategoriesListState>>(
        read: _read,
        streamSynced: _streamSynced,
      );

  Stream<CategoriesListState> _read() async* {
    yield LoadingCategoriesListState();

    final failureOrCategories = _watchAllCategoriesUseCase(NoParams());

    failureOrCategories.fold(
      (l) => FailureCategoriesListState(l.message),
      (categoriesStream) {
        _subscription?.cancel();
        _subscription = categoriesStream.listen(
          (categories) => add(
            StreamSyncedCategoriesListEvent(categories),
          ),
        );
      },
    );
  }

  Stream<CategoriesListState> _streamSynced(
      List<CategoryModel> categoriesList) async* {
    yield LoadingCategoriesListState();
    yield LoadedCategoriesListState(categoriesList);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
