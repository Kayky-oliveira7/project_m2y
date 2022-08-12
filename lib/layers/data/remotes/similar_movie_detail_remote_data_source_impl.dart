import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:project_m2y/layers/data/data_sources/similar_movie_detail_data_source.dart';
import 'package:project_m2y/layers/data/models/similar_movie_detail_model.dart';

class SimilarMovieDetailRemoteDataSourceImpl
    implements SimilarMovieDetailDataSource {
  final Dio dio;
  final String url =
      "https://api.themoviedb.org/3/movie/429/similar?api_key=8008b4e2462dfb1c8a22227b418dcd70&language=en-US&page=1";

  SimilarMovieDetailRemoteDataSourceImpl(this.dio);
  @override
  Future<List<Result>> getSimilarMovieDetail(
      SimilarMovieDetailModel similarMovieDetailModel) async {
    var response = await dio.get(url);

    if (response.statusCode == 200) {
      var result = Result.fromJson(response.data);

      List<Result> movieResults = [];
      movieResults.add(result);

      return movieResults;

      // for (dynamic item in result) {
      //   Result result = Result(
      //     adult: item["adult"],
      //     backdropPath: item["backdropPath"],
      //     genreIds: item["genreIds"],
      //     id: item["id"],
      //     originalLanguage: item["originalLanguage"],
      //     originalTitle: item["originalTitle"],
      //     overview: item["overview"],
      //     popularity: item["popularity"],
      //     posterPath: item["posterPath"],
      //     releaseDate: item["releaseDate"],
      //     title: item["title"],
      //     video: item["video"],
      //     voteAverage: item["voteAverage"],
      //     voteCount: item["voteCount"],
      //   );
      //   movieResults.add(result);
      // }
      // return movieResults;
    }
    return throw Exception("Erro ao carregar dados do endPoint");
  }
}
