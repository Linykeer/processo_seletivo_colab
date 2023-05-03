import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:processo_seletivo_colab/app/models/profile_model.dart';
import 'package:processo_seletivo_colab/app/modules/profile/profile_controller.dart';

Widget itemList({required ProfileModel profileModel, bool list = false, required BuildContext context}) {
  final controller = Modular.get<ProfileController>();
  var index = controller.listPerfil.indexOf(profileModel);
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12),
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white),
          height: 60,
          width: 60,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                profileModel.picture?.medium ?? '',
                fit: BoxFit.cover,
                width: 96,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${profileModel.name!.first} ${profileModel.name!.last}',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${profileModel.dob!.age} Anos',
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                profileModel.email,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(
                        'Deseja realmente remover o perfil de ${profileModel.name!.first} ${profileModel.name!.last}?',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Modular.to.pop();
                        },
                        child: const Text('Não, Fechar'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () async {
                          await controller.removerModelo(index);
                          Modular.to.pop();
                        },
                        child: const Text('Sim, Remover'),
                      )
                    ],
                  );
                },
              );
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            )),
        const SizedBox(
          width: 6,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff811ac0),
          ),
          onPressed: () {
            if (list) {
              Modular.to.pushReplacementNamed('/profile');
            }
            controller.perfil = profileModel;
          },
          child: const Text('Perfil'),
        )
      ],
    ),
  );
}
