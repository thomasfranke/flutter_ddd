import 'package:mobx/mobx.dart';
import 'package:flutter/foundation.dart' as foundation;

part 'fetch_store.g.dart';

class FetchStore<T> = FetchStoreBase<T> with _$FetchStore;

abstract class FetchStoreBase<T> with Store {
  @observable
  bool isFetching = false;

  @observable
  bool fetched = false;

  @observable
  bool success = false;

  @observable
  String errorMessage = "";

  @observable
  T? data;

  FetchStoreBase(this.data);

  @computed
  get hasError => !isFetching && fetched && !success;

  @action
  fetch(Future callback, {bool silent = false}) async {
    if (!silent) {
      this.isFetching = true;
    }
    return callback.then(_onSuccess).catchError(_onError);
  }

  @action
  setData(T value) {
    data = value;
  }

  @action
  refresh() {
    data = data;
  }

  @action
  _onSuccess(dynamic value) {
    data = value;
    this.success = true;
    this.isFetching = false;
    this.fetched = true;
    return value;
  }

  @action
  _onError(error) {
    if (foundation.kDebugMode) {
      throw error;
    }

    if (error is TypeError) {
      this.errorMessage =
          'Falha na exibição dos dados,'
          ' se o problema persitir,'
          ' contate o suporte técnico';
    } else {
      this.errorMessage = error.message;
    }
    this.success = false;
    this.isFetching = false;
    this.fetched = true;
  }
}
