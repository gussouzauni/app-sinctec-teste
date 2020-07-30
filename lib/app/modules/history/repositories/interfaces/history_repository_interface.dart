import 'package:flutter_modular/flutter_modular.dart';

abstract class IHistoryRepository implements Disposable {
  Future fetchPost();
}
