import 'package:project_m2y/layers/core/use_case/use_case.dart';
import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';
import 'package:project_m2y/layers/domain/repositories/genres_repository.dart';

class GetGenresUseCaseImpl implements UseCase<List<GenreDataEntity>, NoParam> {
  final GenresRepository _genreRepository;

  GetGenresUseCaseImpl(this._genreRepository);
  @override
  Future<List<GenreDataEntity>> call(NoParam param) {
    return _genreRepository.getGenres();
  }
}
