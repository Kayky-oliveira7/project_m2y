import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';

abstract class GenreRepository {
  Future<List<GenreDataEntity>> getDataGenre(GenreEntity genreEntity);
}
