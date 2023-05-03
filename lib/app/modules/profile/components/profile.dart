import 'package:flutter/material.dart';
import 'package:processo_seletivo_colab/app/models/profile_model.dart';

Widget profile(ProfileModel? profileModel) {
  if (profileModel != null) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          color: const Color(0xff811ac0),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            padding: const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${profileModel.name?.first} ${profileModel.name?.last}',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 6),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.9),
                      ),
                      children: [
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.email_outlined, size: 18),
                          ),
                        ),
                        const TextSpan(text: 'E-mail: '),
                        TextSpan(
                          text: profileModel.email,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.9),
                    ),
                    children: [
                      const WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: Icon(Icons.phone, size: 18),
                        ),
                      ),
                      const TextSpan(text: 'Telefone: '),
                      TextSpan(
                        text: profileModel.phone,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.9),
                      ),
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: Icon(profileModel.gender == 'male' ? Icons.man : Icons.woman, size: 18),
                          ),
                        ),
                        const TextSpan(text: 'Gênero: '),
                        TextSpan(
                          text: profileModel.gender == 'male'
                              ? 'Masculino'
                              : profileModel.gender == 'female'
                                  ? 'Feminino'
                                  : 'Outros',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.9),
                      ),
                      children: [
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.calendar_month_outlined, size: 18),
                          ),
                        ),
                        const TextSpan(text: 'Idade: '),
                        TextSpan(
                          text: '${profileModel.dob!.age} Anos',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.9),
                      ),
                      children: [
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Icon(Icons.account_circle_sharp, size: 18),
                          ),
                        ),
                        const TextSpan(text: 'Usúario: '),
                        TextSpan(
                          text: profileModel.login!.username,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.9),
                    ),
                    children: const [
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: Icon(Icons.house, size: 18),
                        ),
                      ),
                      TextSpan(text: 'Endereço')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.9),
                    ),
                    children: [
                      const TextSpan(text: ' - Rua: '),
                      TextSpan(
                        text: profileModel.location?.street.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.9),
                    ),
                    children: [
                      const TextSpan(text: ' - Número: '),
                      TextSpan(
                        text: '${profileModel.location?.street.number}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.9),
                    ),
                    children: [
                      const TextSpan(text: ' - Cidade: '),
                      TextSpan(
                        text: '${profileModel.location?.city}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.9),
                    ),
                    children: [
                      const TextSpan(text: ' - Estado: '),
                      TextSpan(
                        text: '${profileModel.location?.state}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Align(
            alignment: Alignment.center,
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(50),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white),
                height: 100,
                width: 100,
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
            ),
          ),
        )
      ],
    );
  } else {
    return const Center(
      child: Text('Não foi encontrado nenhum perfil'),
    );
  }
}
