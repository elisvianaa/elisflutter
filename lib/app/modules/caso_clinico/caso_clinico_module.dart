import 'caso/caso_controller.dart';
import 'package:elis/app/modules/caso_clinico/lista_caso/lista_caso_page.dart';

import 'lista_caso/lista_caso_controller.dart';
import 'caso_clinico_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'caso_clinico_page.dart';

class CasoClinicoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CasoController()),
        Bind((i) => ListaCasoController()),
        Bind((i) => CasoClinicoController(Modular.get())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ListaCasoPage()),
        Router('/addcaso', child: (_, args) => CasoClinicoPage()),
      ];

  static Inject get to => Inject<CasoClinicoModule>.of();
}
