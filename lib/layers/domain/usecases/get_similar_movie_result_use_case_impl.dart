import 'package:project_m2y/layers/core/use_case/use_case.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_result_entity.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_result_repository.dart';

class GetSimilarMovieResultUseCaseImpl
    implements UseCase<List<ResultEntity>, GetSimilarMovieResultParam> {
  final SimilarMovieResultRepository _movieResultRepository;

  GetSimilarMovieResultUseCaseImpl(this._movieResultRepository);

  @override
  Future<List<ResultEntity>> call(param) {
    return _movieResultRepository.getMovieResult(
      param.movieId,
      param.apiKey,
    );
  }
}

class GetSimilarMovieResultParam {
  final int movieId;
  final String apiKey;

  GetSimilarMovieResultParam(
    this.movieId,
    this.apiKey,
  );
}
