import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app_sintec/app/modules/model/model_api.dart';
import 'package:app_sintec/app/shared/utils/constants.dart';
import 'package:mobx/mobx.dart';
part 'api_controller.g.dart';

class ApiStore = _ApiStoreBase with _$ApiStore;

abstract class _ApiStoreBase with Store {
  @observable
  CovidApi covidApi;

  @action
  fetchCovidList() {
    covidApi = null;
    loadCovidApi().then((covidList) {
      covidApi = covidList;
    });
  }

  Future<CovidApi> loadCovidApi() async {
    try {
      final response = await http.get(ConstApi.baseUrl);
      var decodeJson = jsonDecode(response.body);
      return CovidApi.fromJson(decodeJson);
    } catch (err) {
      print('Erro ao carregar lista');
      return null;
    }
  }
}
