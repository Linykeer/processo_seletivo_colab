import 'package:flutter_modular/flutter_modular.dart';
import 'package:processo_seletivo_colab/app/modules/profile/list_profile/list_profile.dart';
import 'package:processo_seletivo_colab/app/modules/profile/profile_controller.dart';
import 'package:processo_seletivo_colab/app/modules/profile/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => ProfileController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/list_profile',
          child: (context, args) => const ListProfile(),
        ),
      ];
}
