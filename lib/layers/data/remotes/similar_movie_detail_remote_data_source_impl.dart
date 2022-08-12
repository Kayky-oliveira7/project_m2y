import 'package:dio/dio.dart';
import 'package:project_m2y/comom/utils/constats.dart';
import 'package:project_m2y/layers/data/data_sources/similar_movie_detail_data_source.dart';
import 'package:project_m2y/layers/data/models/similar_movie_detail_model.dart';

class SimilarMovieDetailRemoteDataSourceImpl
    implements SimilarMovieDetailDataSource {
  final Dio dio;
  final String url =
      "https://api.themoviedb.org/3/movie/429/similar?api_key=$API_KEY&language=en-US&page=1";

  SimilarMovieDetailRemoteDataSourceImpl(this.dio);

  @override
  Future<List<Result>> getSimilarMovieDetail(
      SimilarMovieDetailModel similarMovieDetailModel) async {
    var response = await dio.get(url);

    if (response.statusCode == 200) {
      SimilarMovieDetailModel result =
          SimilarMovieDetailModel.fromJson(response.data);
      return result.results ?? [];
    }
    return throw Exception("Erro ao carregar dados do endPoint");
  }
}
