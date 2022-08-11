import 'package:project_m2y/features/comom/use_case/use_case.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_detail_repository.dart';

class GetSimilarMovieDetailUseCaseImpl implements UseCase<List<Result>, Param> {
  final SimililarMovieDetailRepository _simililarMovieDetailRepository;

  GetSimilarMovieDetailUseCaseImpl(this._simililarMovieDetailRepository);
  @override
  Future<List<Result>> call(Param param) {
    return _simililarMovieDetailRepository
        .getSimilarMovieDetail(param.similarMovieDetailEntity);
  }
}

class Param {
  final SimilarMovieDetailEntity similarMovieDetailEntity;

  Param(this.similarMovieDetailEntity);
}
