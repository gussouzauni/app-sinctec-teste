import 'package:app_sintec/app/shared/utils/constants.dart';
import 'package:dio/native_imp.dart';
import 'api_repository_interface.dart';

class ApiRepository implements IApiRepository {
  final DioForNative client;

  ApiRepository(this.client);

  Future fetchData() async {
    final response = await client.get(ConstApi.baseUrl);
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
