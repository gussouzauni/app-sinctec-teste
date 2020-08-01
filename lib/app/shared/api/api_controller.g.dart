// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ApiStore on _ApiStoreBase, Store {
  final _$covidApiAtom = Atom(name: '_ApiStoreBase.covidApi');

  @override
  CovidApi get covidApi {
    _$covidApiAtom.reportRead();
    return super.covidApi;
  }

  @override
  set covidApi(CovidApi value) {
    _$covidApiAtom.reportWrite(value, super.covidApi, () {
      super.covidApi = value;
    });
  }

  final _$_ApiStoreBaseActionController =
      ActionController(name: '_ApiStoreBase');

  @override
  dynamic fetchCovidList() {
    final _$actionInfo = _$_ApiStoreBaseActionController.startAction(
        name: '_ApiStoreBase.fetchCovidList');
    try {
      return super.fetchCovidList();
    } finally {
      _$_ApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
covidApi: ${covidApi}
    ''';
  }
}
