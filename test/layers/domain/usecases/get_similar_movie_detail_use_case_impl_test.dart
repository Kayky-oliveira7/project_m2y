import 'package:flutter_test/flutter_test.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_detail_repository.dart';
import 'package:project_m2y/layers/domain/usecases/get_similar_movie_detail_use_case_impl.dart';

class SimilarMovieDetailRepositoryImpl
    implements SimililarMovieDetailRepository {
  @override
  Future<List<ResultEntity>> getSimilarMovieDetail(
      SimilarMovieDetailEntity similarMovieDetailEntity) async {
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
        releaseDate: DateTime.parse('1969-07-20 20:18:04Z'),
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );

    if (similarMovieDetailEntity != null) {
      return results;
    }

    return results;
  }
}

void main() {
  test("Quero que similarMovieDetailEntity retorne o result ", () async {
    GetSimilarMovieDetailUseCaseImpl useCaseImpl =
        GetSimilarMovieDetailUseCaseImpl(SimilarMovieDetailRepositoryImpl());

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
        releaseDate: DateTime.parse('1969-07-20 20:18:04Z'),
        title: "Vampiro",
        video: false,
        voteAverage: 1.5,
        voteCount: 10000,
      ),
    );

    var similarMovieDetail = SimilarMovieDetailEntity(
        page: 1, results: results, totalPages: 2, totalResults: 3);

    var useCAse = await useCaseImpl(Param(similarMovieDetail));

    expect(useCAse, useCAse);
  });
}
