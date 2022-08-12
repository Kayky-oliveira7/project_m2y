import 'package:project_m2y/layers/data/data_sources/similar_movie_detail_data_source.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_detail_repository.dart';

class SimilarMovieDetailRepositoryImpl
    implements SimililarMovieDetailRepository {
  final SimilarMovieDetailDataSource _similarMovieDetailDataSource;

  SimilarMovieDetailRepositoryImpl(this._similarMovieDetailDataSource);
  @override
  Future<List<Result>> getSimilarMovieDetail(
      SimilarMovieDetailEntity similarMovieDetailEntity) {
    // TODO: implement getSimilarMovieDetail
    throw UnimplementedError();
  }
}
