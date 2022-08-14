import 'package:project_m2y/layers/data/data_sources/similar_movie_result_data_source.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_result_entity.dart';
import 'package:project_m2y/layers/domain/mappers/similar_movie_result_model_to_entity_mapper.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_result_repository.dart';

class SimilarMovieResultRepositoryImpl implements SimilarMovieResultRepository {
  final SimilarMovieResultDataSource _movieResultDataSource;

  SimilarMovieResultRepositoryImpl(this._movieResultDataSource);

  @override
  Future<List<ResultEntity>> getMovieResult(int movieId, String apiKey) {
    return _movieResultDataSource
        .getSimilarMovieResult(movieId, apiKey)
        .then((value) {
      return value
          .map((e) => SimilarMovieResultModelToEntity(e).toEntity())
          .toList();
    });
  }
}
