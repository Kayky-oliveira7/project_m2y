import 'package:project_m2y/layers/data/models/movie_detail_model.dart';

abstract class MovieDetailDataSource {
  Future<MovieDetailModel> getMovieDetail(int movieId);
}
