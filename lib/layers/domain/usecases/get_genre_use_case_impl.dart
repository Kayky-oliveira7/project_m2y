import 'package:project_m2y/layers/core/use_case/use_case.dart';
import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';
import 'package:project_m2y/layers/domain/repositories/genre_repository.dart';

class GetGenreUseCaseImpl implements UseCase<List<GenreDataEntity>, Param> {
  final GenreRepository _genreRepository;

  GetGenreUseCaseImpl(this._genreRepository);
  @override
  Future<List<GenreDataEntity>> call(Param param) {
    return _genreRepository.getDataGenre(param.genreEntity);
  }
}

class Param {
  final GenreEntity genreEntity;

  Param(this.genreEntity);
}
