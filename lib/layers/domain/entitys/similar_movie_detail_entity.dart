class SimilarMovieDetailEntity {
  final int? page;
  final List<ResultEntity>? results;
  final int? totalPages;
  final int? totalResults;

  SimilarMovieDetailEntity(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults});
}

class ResultEntity {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final OriginalLanguageEntity? originalLanguage;
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
      {required this.adult,
      required this.backdropPath,
      required this.genreIds,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount});
}

enum OriginalLanguageEntity { EN, JA, IT }

final originalLanguageValues = EnumValues({
  "en": OriginalLanguageEntity.EN,
  "it": OriginalLanguageEntity.IT,
  "ja": OriginalLanguageEntity.JA
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    return reverseMap = reverseMap = map.map((k, v) => MapEntry(v, k));
  }
}
