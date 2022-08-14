import 'package:project_m2y/layers/data/models/movie_detail_model.dart';
import 'package:project_m2y/layers/domain/entitys/movie_detail_entity.dart';

class MovieDetailModelToEntityMapper {
  final MovieDetailModel _model;

  MovieDetailModelToEntityMapper(this._model);

  MovieDetailEntity toEntity() {
    return MovieDetailEntity(
      adult: _model.adult,
      backdropPath: _model.backdropPath,
      belongsToCollection: _model.belongsToCollection,
      budget: _model.budget,
      genres: _model.genres
          ?.map((e) => GenreEntity(id: e.id, name: e.name))
          .toList(),
      homepage: _model.homepage,
      id: _model.id,
      imdbId: _model.imdbId,
      originalLanguage: _model.originalLanguage,
      originalTitle: _model.originalTitle,
      overview: _model.overview,
      popularity: _model.popularity,
      posterPath: _model.posterPath,
      productionCompanies: _model.productionCompanies
          ?.map((e) => ProductionCompanyEntity(
                id: e.id,
                logoPath: e.logoPath,
                name: e.name,
                originCountry: e.originCountry,
              ))
          .toList(),
      productionCountries: _model.productionCountries
          ?.map((e) => ProductionCountryEntity(
                iso31661: e.iso31661,
                name: e.name,
              ))
          .toList(),
      releaseDate: _model.releaseDate,
      revenue: _model.revenue,
      runtime: _model.runtime,
      spokenLanguages: _model.spokenLanguages
          ?.map((e) => SpokenLanguageEntity(
                iso6391: e.iso6391,
                name: e.name,
              ))
          .toList(),
      status: _model.status,
      tagline: _model.tagline,
      title: _model.title,
      video: _model.video,
      voteAverage: _model.voteAverage,
      voteCount: _model.voteCount,
    );
  }
}
