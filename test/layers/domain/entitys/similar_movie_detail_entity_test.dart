import 'package:flutter_test/flutter_test.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';

final releaseDate = DateTime.parse('1969-07-20 20:18:04Z');
final originalLanguage = EnumValues({
  "en": OriginalLanguageEntity.EN,
  "it": OriginalLanguageEntity.IT,
  "ja": OriginalLanguageEntity.JA
});
void main() {
  test("Similar movie detail entity nao pode ser nulo", () {
    SimilarMovieDetailEntity similarMovieDetailEntity =
        SimilarMovieDetailEntity(
      page: 1,
      results: [],
      totalPages: 2,
      totalResults: 3,
    );
    expect(similarMovieDetailEntity, isNotNull);
  });
  test("Page deve retornar 1", () {
    SimilarMovieDetailEntity similarMovieDetailEntity =
        SimilarMovieDetailEntity(
      page: 1,
      results: [],
      totalPages: 2,
      totalResults: 3,
    );
    expect(similarMovieDetailEntity.page, 1);
  });
  test("Result deve retornar vazio", () {
    SimilarMovieDetailEntity similarMovieDetailEntity =
        SimilarMovieDetailEntity(
      page: 1,
      results: [],
      totalPages: 2,
      totalResults: 3,
    );
    expect(similarMovieDetailEntity.results, isEmpty);
  });
  test("Total pages deve retornar 2", () {
    SimilarMovieDetailEntity similarMovieDetailEntity =
        SimilarMovieDetailEntity(
      page: 1,
      results: [],
      totalPages: 2,
      totalResults: 3,
    );
    expect(similarMovieDetailEntity.totalPages, 2);
  });
  test("Total result deve retornar3", () {
    SimilarMovieDetailEntity similarMovieDetailEntity =
        SimilarMovieDetailEntity(
      page: 1,
      results: [],
      totalPages: 2,
      totalResults: 3,
    );
    expect(similarMovieDetailEntity.totalResults, 3);
  });

  test("Results nao deve retornar nulo", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    expect(results, isNotNull);
  });
  test("Adult nao deve retonar false", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.adult, false);
    }
  });
  test("Backdrop Path deve retornar uma imagem de fundo", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.backdropPath, "Imagem de fundo Vampiro");
    }
  });

  test("Genre Ids deve rotornar vazio", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.genreIds, isEmpty);
    }
  });

  test("ID deve retornar 1", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.id, 1);
    }
  });

  test("Linguagem original deve retornar EN", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.originalLanguage, OriginalLanguageEntity.EN);
    }
  });

  test("Original Language deve retornar O Vampiro", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.originalTitle, "O Vampiro");
    }
  });

  test("Overview Deve retornar Um filme que o vampiro nao gosta de alho", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.overview, "Um filme que o vampiro nao gosta de alho");
    }
  });

  test("Popularity deve retornar 2.130", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.popularity, 2.130);
    }
  });
  test("Poster Path deve retornar Imagem do Vampiro", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.posterPath, "Imagem do Vampiro");
    }
  });

  test("Date Time deve retornar ReliseDate", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.releaseDate, releaseDate);
    }
  });
  test("Title deve retornar Vampiro", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.title, "Vampiro");
    }
  });

  test("Video deve retornar Falso ", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.video, false);
    }
  });
  test("Vote Average de retornar 1.5", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.voteAverage, 1.5);
    }
  });
  test("Vote Count deve retornar 10000", () {
    List<ResultEntity> results = [];
    results.add(
      ResultEntity(
        adult: false,
        backdropPath: "Imagem de fundo Vampiro",
        genreIds: [],
        id: 1,
        originalLanguage: OriginalLanguageEntity.EN,
        originalTitle: "O Vampiro",
        overview: "Um filme que o vampiro nao gosta de alho",
        popularity: 2.130,
        posterPath: "Imagem do Vampiro",
        releaseDate: releaseDate,
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );
    for (var index = 0; index < results.length; index++) {
      var result = results[index];
      expect(result.voteCount, 10000);
    }
  });
}
