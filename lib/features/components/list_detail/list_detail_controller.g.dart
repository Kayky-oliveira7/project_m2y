// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListDetailController on _ListDetailControllerBase, Store {
  late final _$stateAtom =
      Atom(name: '_ListDetailControllerBase.state', context: context);

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

  late final _$movieDetailAtom =
      Atom(name: '_ListDetailControllerBase.movieDetail', context: context);

  @override
  MovieDetailEntity? get movieDetail {
    _$movieDetailAtom.reportRead();
    return super.movieDetail;
  }

  @override
  set movieDetail(MovieDetailEntity? value) {
    _$movieDetailAtom.reportWrite(value, super.movieDetail, () {
      super.movieDetail = value;
    });
  }

  late final _$genresAtom =
      Atom(name: '_ListDetailControllerBase.genres', context: context);

  @override
  String get genres {
    _$genresAtom.reportRead();
    return super.genres;
  }

  @override
  set genres(String value) {
    _$genresAtom.reportWrite(value, super.genres, () {
      super.genres = value;
    });
  }

  late final _$_ListDetailControllerBaseActionController =
      ActionController(name: '_ListDetailControllerBase', context: context);

  @override
  void load() {
    final _$actionInfo = _$_ListDetailControllerBaseActionController
        .startAction(name: '_ListDetailControllerBase.load');
    try {
      return super.load();
    } finally {
      _$_ListDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
movieDetail: ${movieDetail},
genres: ${genres}
    ''';
  }
}
