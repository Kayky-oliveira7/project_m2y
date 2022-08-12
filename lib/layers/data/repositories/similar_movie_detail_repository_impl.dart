import 'package:project_m2y/layers/data/data_sources/similar_movie_detail_data_source.dart';
import 'package:project_m2y/layers/data/models/similar_movie_detail_model.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/mappers/similar_movie_detail_model_to_entity_mapper.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_detail_repository.dart';

class SimilarMovieDetailRepositoryImpl
    implements SimililarMovieDetailRepository {
  final SimilarMovieDetailDataSource _similarMovieDetailDataSource;

  SimilarMovieDetailRepositoryImpl(this._similarMovieDetailDataSource);
  @override
  Future<List<ResultEntity>> getSimilarMovieDetail(
      SimilarMovieDetailEntity similarMovieDetailEntity) {
    return _similarMovieDetailDataSource
        .getSimilarMovieDetail(SimilarMovieDetailModel())
        .then((value) {
      return value
          .map((e) => SimilarMovieDetailModelToEntityMapper(e).toEntity())
          .toList();
    });
  }
}
