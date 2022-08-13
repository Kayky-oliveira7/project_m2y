// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GenreController on _GenreControllerBase, Store {
  late final _$stateAtom =
      Atom(name: '_GenreControllerBase.state', context: context);

  @override
  AppState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(AppState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$_GenreControllerBaseActionController =
      ActionController(name: '_GenreControllerBase', context: context);

  @override
  void load() {
    final _$actionInfo = _$_GenreControllerBaseActionController.startAction(
        name: '_GenreControllerBase.load');
    try {
      return super.load();
    } finally {
      _$_GenreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
