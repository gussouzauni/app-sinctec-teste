import 'package:app_sintec/app/modules/model/model_api.dart';
import 'package:app_sintec/app/shared/api/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CovidPage extends StatefulWidget {
  @override
  _CovidPageState createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
  ApiStore apiStore;
  @override
  void initState() {
    apiStore = ApiStore();
    apiStore.fetchCovidList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (BuildContext context) {
      CovidApi _covidApi = apiStore.covidApi;
      return (_covidApi != null)
          ? ListView.builder(
              itemCount: _covidApi.covid.length,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var _covid = _covidApi.covid[index];
                return Text(_covid.cases.toString());
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
