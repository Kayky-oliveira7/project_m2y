import 'package:project_m2y/layers/domain/entitys/similar_movie_result_entity.dart';

abstract class SimilarMovieResultRepository {
  Future<List<ResultEntity>> getMovieResult(int movieId, String apiKey);
}
