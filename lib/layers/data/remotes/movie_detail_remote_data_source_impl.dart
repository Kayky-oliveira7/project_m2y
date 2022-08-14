import 'package:dio/dio.dart';
import 'package:project_m2y/comom/utils/constats.dart';
import 'package:project_m2y/layers/data/data_sources/movie_detail_data_source.dart';
import 'package:project_m2y/layers/data/models/movie_detail_model.dart';

class MovieDetailRemoteDataSourceImpl implements MovieDetailDataSource {
  final Dio dio;

  MovieDetailRemoteDataSourceImpl(this.dio);

  @override
  Future<MovieDetailModel> getMovieDetail(int movieId) async {
    var response = await dio.get(
      CreateMovieDetailUrl(
        movieId: movieId,
        apiKey: API_KEY,
      ).create(),
    );

    if (response.statusCode == 200) {
      MovieDetailModel movie = MovieDetailModel.fromJson(response.data);
      return movie;
    }
    return throw Exception("Erro ao carregar dados do endPoint");
  }
}

class CreateMovieDetailUrl {
  final int movieId;
  final String apiKey;

  CreateMovieDetailUrl({
    required this.movieId,
    required this.apiKey,
  });

  String create() {
    return "https://api.themoviedb.org/3/movie/$movieId?api_key=$apiKey&language=en-US";
  }
}
