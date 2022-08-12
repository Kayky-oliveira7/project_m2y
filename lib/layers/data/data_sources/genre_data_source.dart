import 'package:project_m2y/layers/data/models/genre_model.dart';

abstract class GenreDataSource {
  Future<List<Genre>> getDataGenre(GenreModel genreModel);
}
