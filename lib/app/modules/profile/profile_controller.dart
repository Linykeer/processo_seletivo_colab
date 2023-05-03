import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:processo_seletivo_colab/app/core/messages/messages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:processo_seletivo_colab/app/core/lifeCicle/controller_life_cicle.dart';
import 'package:processo_seletivo_colab/app/models/profile_model.dart';
part 'profile_controller.g.dart';

class ProfileController = ProfileControllerBase with _$ProfileController;

abstract class ProfileControllerBase with Store, ControllerLifeCicle {
  @observable
  bool loading = false;

  @observable
  ObservableList<ProfileModel> listPerfil = ObservableList<ProfileModel>();

  @observable
  ProfileModel? perfil;

  @override
  Future<void> onInit() async {
    await getPerfil();
    await carregarLista();
  }

  @action
  Future<void> getPerfil() async {
    try {
      loading = true;
      final response = await http.get(Uri.parse('https://randomuser.me/api/'));
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = jsonDecode(response.body);
        for (var dataBody in body['results']) {
          perfil = ProfileModel.fromMap(dataBody);
        }
      }
    } catch (e) {
      Messages.alert('Erro ao buscar perfil');
    } finally {
      loading = false;
    }
  }

  @action
  Future<void> carregarLista() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? listaJson = prefs.getString('listPerfil');
      if (listaJson != null) {
        listPerfil.clear();
        final listData = jsonDecode(listaJson);
        for (var data in listData) {
          listPerfil.add(ProfileModel.fromMap(data));
        }
      }
    } catch (e) {
      Messages.alert('Erro ao carregar lista de perfil');
    }
  }

  @action
  Future<void> salvarPerfil(ProfileModel perfil) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool existingProfile = listPerfil.any((m) => m.login!.uuid == perfil.login!.uuid);
      if (!existingProfile) {
        listPerfil.add(perfil);
        List<Map<String, dynamic>> listMaps = listPerfil.map((m) => m.toMap()).toList();
        await prefs.setString('listPerfil', jsonEncode(listMaps));
      }
    } catch (e) {
      Messages.alert('Erro ao salvar perfil');
    }
  }

  @action
  Future<void> removerModelo(int index) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      listPerfil.removeAt(index);
      List<Map<String, dynamic>> listMaps = listPerfil.map((m) => m.toMap()).toList();
      await prefs.setString('listPerfil', jsonEncode(listMaps));
    } catch (e) {
      Messages.alert('Erro ao remover perfil');
    }
  }
}
