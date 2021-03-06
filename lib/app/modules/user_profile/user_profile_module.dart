import 'user_profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'user_profile_page.dart';

class UserProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserProfileController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => UserProfilePage()),
      ];

  static Inject get to => Inject<UserProfileModule>.of();
}
