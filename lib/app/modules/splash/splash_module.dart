import 'package:flutter_modular/flutter_modular.dart';
import 'package:processo_seletivo_colab/app/modules/splash/splash_page.dart';

class SplashModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashPage(),
        ),
      ];
}
