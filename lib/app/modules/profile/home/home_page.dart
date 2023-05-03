import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:processo_seletivo_colab/app/core/lifeCicle/page_life_cicle_state.dart';
import 'package:processo_seletivo_colab/app/core/loading/loading.dart';
import 'package:processo_seletivo_colab/app/modules/profile/components/profile.dart';
import 'package:processo_seletivo_colab/app/modules/profile/components/profile_item_list.dart';
import 'package:processo_seletivo_colab/app/modules/profile/profile_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends PageLifeCicleState<ProfileController, HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Observer(
                builder: (_) {
                  if (!controller.loading) {
                    final existingProfile =
                        controller.listPerfil.any((element) => element.login!.uuid == controller.perfil!.login!.uuid);
                    return Center(
                      child: Column(
                        children: [
                          profile(controller.perfil),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff811ac0),
                                  ),
                                  onPressed: () async {
                                    await controller.getPerfil();
                                  },
                                  child: const Text('Buscar Novo Perfil')),
                              const SizedBox(
                                width: 16,
                              ),
                              !existingProfile
                                  ? ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xff811ac0),
                                      ),
                                      onPressed: () async {
                                        if (controller.perfil != null) {
                                          await controller.salvarPerfil(controller.perfil!);
                                        }
                                      },
                                      child: const Text('Salvar Perfil'))
                                  : const SizedBox.shrink(),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else {
                    return loading(context);
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Observer(
                builder: (_) {
                  return controller.listPerfil.isNotEmpty
                      ? Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Último Perfil Adicionado'),
                                  TextButton(
                                      onPressed: () {
                                        Modular.to.pushNamed('/list_profile');
                                      },
                                      child: const Text(
                                        'Ver Lista Completa',
                                        style: TextStyle(
                                          color: Colors.black,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: itemList(profileModel: controller.listPerfil.last, context: context),
                            ),
                          ],
                        )
                      : const SizedBox.shrink();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
