import 'repositories/history_repository.dart';
import 'repositories/interfaces/history_repository_interface.dart';
import 'history_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'history_page.dart';

class HistoryModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<IHistoryRepository>((i) => HistoryRepository(Dio())),
        Bind((i) => HistoryController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HistoryPage()),
      ];

  static Inject get to => Inject<HistoryModule>.of();
}
