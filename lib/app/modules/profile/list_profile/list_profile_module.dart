import 'package:flutter_modular/flutter_modular.dart';
import 'package:processo_seletivo_colab/app/modules/profile/home/home_module.dart';
import 'package:processo_seletivo_colab/app/modules/profile/list_profile/list_profile.dart';

class ListProfileModule extends Module {
  @override
  List<Module> get imports => [
        HomeModule(),
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const ListProfile(),
        ),
      ];
}
