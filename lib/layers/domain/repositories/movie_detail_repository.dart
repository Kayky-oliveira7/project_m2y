import 'package:project_m2y/layers/domain/entitys/movie_detail_entity.dart';

abstract class MovieDetailRepository {
  Future<MovieDetailEntity> getMovieDetail(int moveId);
}
