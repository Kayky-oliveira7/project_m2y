import 'package:project_m2y/layers/data/models/similarmovie_result_model.dart';

abstract class SimilarMovieResultDataSource {
  Future<List<Result>> getSimilarMovieResult(int movieId, String apiKey);
}
