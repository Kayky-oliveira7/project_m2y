import 'package:project_m2y/layers/data/models/similar_movie_detail_model.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';

class SimilarMovieDetailModelToEntityMapper {
  final Result _modelResult;

  SimilarMovieDetailModelToEntityMapper(this._modelResult);

  ResultEntity toEntity() {
    return ResultEntity(
        adult: _modelResult.adult,
        backdropPath: _modelResult.backdropPath,
        genreIds: _modelResult.genreIds,
        id: _modelResult.id,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: _modelResult.originalTitle,
        overview: _modelResult.overview,
        popularity: _modelResult.popularity,
        posterPath: _modelResult.posterPath,
        releaseDate: _modelResult.releaseDate,
        title: _modelResult.title,
        video: _modelResult.video,
        voteAverage: _modelResult.voteAverage,
        voteCount: _modelResult.voteCount);
  }
}
