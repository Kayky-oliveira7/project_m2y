class SimilarMovieResultEntity {
  final int? page;
  final List<ResultEntity>? results;
  final int? totalPages;
  final int? totalResults;

  SimilarMovieResultEntity(
      this.page, this.results, this.totalPages, this.totalResults);
}

class ResultEntity {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final OriginalLanguageENtity? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final DateTime? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  ResultEntity(
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount);
}

enum OriginalLanguageENtity { EN, IT, JA }

final originalLanguageValues = EnumValues({
  "en": OriginalLanguageENtity.EN,
  "it": OriginalLanguageENtity.IT,
  "ja": OriginalLanguageENtity.JA
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    return reverseMap = map.map((k, v) => MapEntry(v, k));
  }
}
