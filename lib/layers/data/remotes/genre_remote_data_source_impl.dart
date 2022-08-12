import 'package:dio/dio.dart';
import 'package:project_m2y/layers/data/data_sources/genre_data_source.dart';
import 'package:project_m2y/layers/data/models/genre_model.dart';

class GenreRemoteDataSourceImpl implements GenreDataSource {
  final Dio dio;

  final String url =
      "https://api.themoviedb.org/3/genre/movie/list?api_key=8008b4e2462dfb1c8a22227b418dcd70&language=en-U";

  GenreRemoteDataSourceImpl(this.dio);
  @override
  Future<List<Genre>> getDataGenre(GenreModel genreModel) async {
    var response = await dio.get(url);

    if (response.statusCode == 200) {
      GenreModel genre = GenreModel.fromJson(response.data);

      return genre.genres ?? [];
    }

    return throw Exception("Erro ao carregar dados do endPoint");
  }
}
