import 'package:project_m2y/layers/data/models/similar_movie_detail_model.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';

class SimilarMovieDetailModelToEntityMapper {
  final SimilarMovieDetailModel _similarMovieDetailModel;

  SimilarMovieDetailModelToEntityMapper(this._similarMovieDetailModel);

  SimilarMovieDetailEntity toEntity() {
    return SimilarMovieDetailEntity(
      page: _similarMovieDetailModel.page,
      results: [],
      totalPages: _similarMovieDetailModel.totalPages,
      totalResults: _similarMovieDetailModel.totalResults,
    );
  }
}
