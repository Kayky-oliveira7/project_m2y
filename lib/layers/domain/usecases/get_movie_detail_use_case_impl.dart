import 'package:project_m2y/layers/core/use_case/use_case.dart';
import 'package:project_m2y/layers/domain/entitys/movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/repositories/movie_detail_repository.dart';

class GetMovieDetailUseCaseImpl
    implements UseCase<MovieDetailEntity, GetMovieDetailUseCaseParam> {
  final MovieDetailRepository _movieDetailRepository;
  GetMovieDetailUseCaseImpl(this._movieDetailRepository);

  @override
  Future<MovieDetailEntity> call(GetMovieDetailUseCaseParam param) {
    return _movieDetailRepository.getMovieDetail(param.movieId);
  }
}

class GetMovieDetailUseCaseParam {
  final int movieId;
  GetMovieDetailUseCaseParam(this.movieId);
}
