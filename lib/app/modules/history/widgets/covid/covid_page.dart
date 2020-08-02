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
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120,
              child: Center(
                child: Text(
                  'Consumindo uma API',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Expanded(
              child: Observer(builder: (BuildContext context) {
                CovidApi _covidApi = apiStore.covidApi;
                return (_covidApi != null)
                    ? ListView.builder(
                        itemCount: _covidApi.covid.length,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          var _covid = _covidApi.covid[index];
                          return Container(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Card(
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        _covid.uf,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: _covid.state,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ]),
                                    ),
                                    Text(
                                      _covid.cases.toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      _covid.deaths.toString(),
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
