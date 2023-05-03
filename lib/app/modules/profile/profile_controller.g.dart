// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileController on ProfileControllerBase, Store {
  late final _$loadingAtom =
      Atom(name: 'ProfileControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$listPerfilAtom =
      Atom(name: 'ProfileControllerBase.listPerfil', context: context);

  @override
  ObservableList<ProfileModel> get listPerfil {
    _$listPerfilAtom.reportRead();
    return super.listPerfil;
  }

  @override
  set listPerfil(ObservableList<ProfileModel> value) {
    _$listPerfilAtom.reportWrite(value, super.listPerfil, () {
      super.listPerfil = value;
    });
  }

  late final _$perfilAtom =
      Atom(name: 'ProfileControllerBase.perfil', context: context);

  @override
  ProfileModel? get perfil {
    _$perfilAtom.reportRead();
    return super.perfil;
  }

  @override
  set perfil(ProfileModel? value) {
    _$perfilAtom.reportWrite(value, super.perfil, () {
      super.perfil = value;
    });
  }

  late final _$getPerfilAsyncAction =
      AsyncAction('ProfileControllerBase.getPerfil', context: context);

  @override
  Future<void> getPerfil() {
    return _$getPerfilAsyncAction.run(() => super.getPerfil());
  }

  late final _$carregarListaAsyncAction =
      AsyncAction('ProfileControllerBase.carregarLista', context: context);

  @override
  Future<void> carregarLista() {
    return _$carregarListaAsyncAction.run(() => super.carregarLista());
  }

  late final _$salvarPerfilAsyncAction =
      AsyncAction('ProfileControllerBase.salvarPerfil', context: context);

  @override
  Future<void> salvarPerfil(ProfileModel perfil) {
    return _$salvarPerfilAsyncAction.run(() => super.salvarPerfil(perfil));
  }

  late final _$removerModeloAsyncAction =
      AsyncAction('ProfileControllerBase.removerModelo', context: context);

  @override
  Future<void> removerModelo(int index) {
    return _$removerModeloAsyncAction.run(() => super.removerModelo(index));
  }

  @override
  String toString() {
    return '''
loading: ${loading},
listPerfil: ${listPerfil},
perfil: ${perfil}
    ''';
  }
}
