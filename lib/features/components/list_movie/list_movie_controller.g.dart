// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_movie_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListMovieController on _ListMovieControllerBase, Store {
  late final _$similarMovieResultStateAtom = Atom(
      name: '_ListMovieControllerBase.similarMovieResultState',
      context: context);

  @override
  AppState get similarMovieResultState {
    _$similarMovieResultStateAtom.reportRead();
    return super.similarMovieResultState;
  }

  @override
  set similarMovieResultState(AppState value) {
    _$similarMovieResultStateAtom
        .reportWrite(value, super.similarMovieResultState, () {
      super.similarMovieResultState = value;
    });
  }

  late final _$listResultAtom =
      Atom(name: '_ListMovieControllerBase.listResult', context: context);

  @override
  List<ResultEntity>? get listResult {
    _$listResultAtom.reportRead();
    return super.listResult;
  }

  @override
  set listResult(List<ResultEntity>? value) {
    _$listResultAtom.reportWrite(value, super.listResult, () {
      super.listResult = value;
    });
  }

  late final _$_ListMovieControllerBaseActionController =
      ActionController(name: '_ListMovieControllerBase', context: context);

  @override
  void load() {
    final _$actionInfo = _$_ListMovieControllerBaseActionController.startAction(
        name: '_ListMovieControllerBase.load');
    try {
      return super.load();
    } finally {
      _$_ListMovieControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
similarMovieResultState: ${similarMovieResultState},
listResult: ${listResult}
    ''';
  }
}
