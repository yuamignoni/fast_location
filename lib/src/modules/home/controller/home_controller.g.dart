// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$addressAtom =
      Atom(name: '_HomeControllerBase.address', context: context);

  @override
  Address? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(Address? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_HomeControllerBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_HomeControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$addressHistoryAtom =
      Atom(name: '_HomeControllerBase.addressHistory', context: context);

  @override
  ObservableList<Map<String, dynamic>> get addressHistory {
    _$addressHistoryAtom.reportRead();
    return super.addressHistory;
  }

  @override
  set addressHistory(ObservableList<Map<String, dynamic>> value) {
    _$addressHistoryAtom.reportWrite(value, super.addressHistory, () {
      super.addressHistory = value;
    });
  }

  late final _$searchAddressAsyncAction =
      AsyncAction('_HomeControllerBase.searchAddress', context: context);

  @override
  Future<void> searchAddress(String cep) {
    return _$searchAddressAsyncAction.run(() => super.searchAddress(cep));
  }

  @override
  String toString() {
    return '''
address: ${address},
errorMessage: ${errorMessage},
isLoading: ${isLoading},
addressHistory: ${addressHistory}
    ''';
  }
}
