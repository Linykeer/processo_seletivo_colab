import 'package:flutter_modular/flutter_modular.dart';
import 'package:processo_seletivo_colab/app/modules/profile/home/home_module.dart';
import 'package:processo_seletivo_colab/app/modules/profile/list_profile/list_profile_module.dart';
import 'package:processo_seletivo_colab/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/profile', module: HomeModule()),
        ModuleRoute('/list_profile', module: ListProfileModule()),
      ];
}
