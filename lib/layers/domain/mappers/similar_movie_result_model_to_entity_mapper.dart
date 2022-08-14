import 'package:project_m2y/layers/data/models/similarmovie_result_model.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_result_entity.dart';

class SimilarMovieResultModelToEntity {
  final Result _model;

  SimilarMovieResultModelToEntity(this._model);

  ResultEntity toEntity() {
    return ResultEntity(
        _model.adult,
        _model.backdropPath,
        _model.genreIds,
        _model.id,
        OriginalLanguageENtity.EN,
        _model.originalTitle,
        _model.overview,
        _model.popularity,
        _model.posterPath,
        _model.releaseDate,
        _model.title,
        _model.video,
        _model.voteAverage,
        _model.voteCount);
  }
}
