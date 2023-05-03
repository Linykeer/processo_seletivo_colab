import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:processo_seletivo_colab/app/core/lifeCicle/page_life_cicle_state.dart';
import 'package:processo_seletivo_colab/app/core/loading/loading.dart';
import 'package:processo_seletivo_colab/app/modules/profile/components/profile_item_list.dart';
import 'package:processo_seletivo_colab/app/modules/profile/profile_controller.dart';

class ListProfile extends StatefulWidget {
  const ListProfile({Key? key}) : super(key: key);

  @override
  State<ListProfile> createState() => _ListProfileState();
}

class _ListProfileState extends PageLifeCicleState<ProfileController, ListProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff811ac0),
        title: const Text('Listagem de Perfis Salvos'),
      ),
      body: Observer(
        builder: (_) {
          if (controller.listPerfil.isNotEmpty) {
            return ListView.builder(
              itemCount: controller.listPerfil.length,
              itemBuilder: (context, index) {
                final profile = controller.listPerfil[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: itemList(profileModel: profile, list: true, context: context),
                );
              },
            );
          } else {
            return loading(context);
          }
        },
      ),
    );
  }
}
