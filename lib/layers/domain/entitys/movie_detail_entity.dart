// To parse this JSON data, do
//
//     final movieDetailModel = movieDetailModelFromJson(jsonString);

class MovieDetailEntity {
  MovieDetailEntity({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  final bool? adult;
  final String? backdropPath;
  final dynamic? belongsToCollection;
  final int? budget;
  final List<GenreEntity>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final dynamic posterPath;
  final List<ProductionCompanyEntity>? productionCompanies;
  final List<ProductionCountryEntity>? productionCountries;
  final DateTime? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguageEntity>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;
}

class GenreEntity {
  GenreEntity({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;
}

class ProductionCompanyEntity {
  ProductionCompanyEntity({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;
}

class ProductionCountryEntity {
  ProductionCountryEntity({
    this.iso31661,
    this.name,
  });

  final String? iso31661;
  final String? name;
}

class SpokenLanguageEntity {
  SpokenLanguageEntity({
    this.iso6391,
    this.name,
  });

  final String? iso6391;
  final String? name;
}
