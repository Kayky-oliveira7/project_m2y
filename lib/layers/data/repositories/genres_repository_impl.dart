import 'package:project_m2y/layers/data/data_sources/genres_data_source.dart';
import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';
import 'package:project_m2y/layers/domain/mappers/genre_model_to_entity_mapper.dart';
import 'package:project_m2y/layers/domain/repositories/genres_repository.dart';

class GenresRepositoryImpl implements GenresRepository {
  final GenresDataSource _genresDataSource;
  GenresRepositoryImpl(this._genresDataSource);

  @override
  Future<List<GenreDataEntity>> getGenres() {
    return _genresDataSource.getGenres().then((value) {
      return value.map((e) => GenreModelToEntityMapper(e).toEntity()).toList();
    });
  }
}
