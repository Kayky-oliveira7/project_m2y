import 'package:dio/dio.dart';
import 'package:project_m2y/layers/data/data_sources/similar_movie_result_data_source.dart';
import 'package:project_m2y/layers/data/models/similarmovie_result_model.dart';

class SimilarMovieResultRemoteDataSourceImpl
    implements SimilarMovieResultDataSource {
  final Dio dio;
  final String url =
      "https://api.themoviedb.org/3/movie/429/similar?api_key=8008b4e2462dfb1c8a22227b418dcd70&language=en-US&page=1";

  SimilarMovieResultRemoteDataSourceImpl(this.dio);

  @override
  Future<List<Result>> getSimilarMovieResult(int movieId, String apiKey) async {
    var response = await dio.get(url);

    if (response.statusCode == 200) {
      SimilarMovieDetailResultModel resultMovie =
          SimilarMovieDetailResultModel.fromJson(response.data);

      return resultMovie.results ?? [];
    }
    return throw Exception("erro 200");
  }
}
