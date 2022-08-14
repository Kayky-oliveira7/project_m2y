import 'package:project_m2y/layers/data/models/genre_model.dart';

abstract class GenresDataSource {
  Future<List<Genre>> getGenres();
}
