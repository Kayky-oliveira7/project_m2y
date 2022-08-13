import 'package:project_m2y/layers/data/data_sources/genre_data_source.dart';
import 'package:project_m2y/layers/data/models/genre_model.dart';
import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';
import 'package:project_m2y/layers/domain/mappers/genre_model_to_entity_mapper.dart';
import 'package:project_m2y/layers/domain/repositories/genre_repository.dart';

class GenreRepositoryImpl implements GenreRepository {
  final GenreDataSource _genreDataSource;

  GenreRepositoryImpl(this._genreDataSource);
  @override
  Future<List<GenreDataEntity>> getDataGenre(GenreEntity genreEntity) {
    return _genreDataSource.getDataGenre(GenreModel()).then((value) {
      return value.map((e) => GenreModelToEntityMapper(e).toEntity()).toList();
    });
  }
}
