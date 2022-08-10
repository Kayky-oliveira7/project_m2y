import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';

abstract class SimililarMovieDetailRepository {
  Future<SimilarMovieDetailEntity> getSimilarMovieDetail(Result result);
}
