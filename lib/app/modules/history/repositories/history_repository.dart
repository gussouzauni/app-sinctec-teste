import 'package:dio/native_imp.dart';
import 'interfaces/history_repository_interface.dart';

class HistoryRepository implements IHistoryRepository {
  final DioForNative client;

  HistoryRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
