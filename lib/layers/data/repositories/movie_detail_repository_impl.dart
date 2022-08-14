import 'package:project_m2y/layers/data/data_sources/movie_detail_data_source.dart';
import 'package:project_m2y/layers/domain/entitys/movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/mappers/movie_detail_model_to_entity_mapper.dart';
import 'package:project_m2y/layers/domain/repositories/movie_detail_repository.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailDataSource _movieDetailDataSource;
  MovieDetailRepositoryImpl(this._movieDetailDataSource);
  @override
  Future<MovieDetailEntity> getMovieDetail(int movieId) {
    return _movieDetailDataSource.getMovieDetail(movieId).then((movie) {
      return MovieDetailModelToEntityMapper(movie).toEntity();
    });
  }
}
