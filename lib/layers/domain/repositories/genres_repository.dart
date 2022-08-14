import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';

abstract class GenresRepository {
  Future<List<GenreDataEntity>> getGenres();
}
