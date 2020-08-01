import 'package:app_sintec/app/modules/history/history_module.dart';
import 'package:app_sintec/app/modules/login/login_module.dart';
import 'package:app_sintec/app/modules/profile/profile_controller.dart';
import 'package:app_sintec/app/modules/profile/profile_module.dart';
import 'package:app_sintec/app/shared/auth/auth_controller.dart';
import 'package:app_sintec/app/shared/auth/repositories/auth_repository.dart';
import 'package:app_sintec/app/shared/auth/repositories/auth_repository_interface.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:app_sintec/app/app_widget.dart';
import 'package:app_sintec/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => ProfileController()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController())
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/login', module: LoginModule()),
        Router('/history', module: HistoryModule()),
        Router('/profile', module: ProfileModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
