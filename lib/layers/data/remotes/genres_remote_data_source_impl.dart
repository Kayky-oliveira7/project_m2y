import 'package:dio/dio.dart';
import 'package:project_m2y/comom/utils/constats.dart';
import 'package:project_m2y/layers/data/data_sources/genres_data_source.dart';
import 'package:project_m2y/layers/data/models/genre_model.dart';

class GenresRemoteDataSourceImpl implements GenresDataSource {
  final Dio dio;

  final String url =
      "https://api.themoviedb.org/3/genre/movie/list?api_key=$API_KEY&language=en-U";

  GenresRemoteDataSourceImpl(this.dio);
  @override
  Future<List<Genre>> getGenres() async {
    var response = await dio.get(url);

    if (response.statusCode == 200) {
      GenreModel genre = GenreModel.fromJson(response.data);
      return genre.genres ?? [];
    }

    return throw Exception("Erro ao carregar dados do endPoint");
  }
}
