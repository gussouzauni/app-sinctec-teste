import 'package:flutter_modular/flutter_modular.dart';

abstract class IApiRepository implements Disposable {
  Future fetchData();
}
