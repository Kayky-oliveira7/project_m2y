import 'package:project_m2y/layers/data/models/similar_movie_detail_model.dart';

abstract class SimilarMovieDetailDataSource {
  Future<List<Result>> getSimilarMovieDetail(
      SimilarMovieDetailModel similarMovieDetailModel);
}
