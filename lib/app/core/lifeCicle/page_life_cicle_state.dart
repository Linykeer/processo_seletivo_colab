import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:processo_seletivo_colab/app/core/lifeCicle/controller_life_cicle.dart';

abstract class PageLifeCicleState<C extends ControllerLifeCicle, P extends StatefulWidget> extends State<P> {
  final controller = Modular.get<C>();

  @override
  void initState() {
    super.initState();
    controller.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) => controller.onReady());
  }
}
