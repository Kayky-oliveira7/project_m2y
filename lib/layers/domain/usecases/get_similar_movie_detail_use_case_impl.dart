import 'package:project_m2y/features/comom/use_case/use_case.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_detail_repository.dart';

class GetSimilarMovieDetailUseCaseImpl
    implements UseCase<SimilarMovieDetailEntity, Param> {
  final SimililarMovieDetailRepository _simililarMovieDetailRepository;

  GetSimilarMovieDetailUseCaseImpl(this._simililarMovieDetailRepository);
  @override
  Future<SimilarMovieDetailEntity> call(Param param) {
    return _simililarMovieDetailRepository.getSimilarMovieDetail(param.result);
  }
}

class Param {
  final Result result;

  Param(this.result);
}
