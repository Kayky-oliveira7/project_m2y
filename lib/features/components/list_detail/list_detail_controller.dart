import 'package:mobx/mobx.dart';
import 'package:project_m2y/comom/app_state/app_state.dart';
import 'package:project_m2y/layers/domain/entitys/movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/usecases/get_movie_detail_use_case_impl.dart';
part 'list_detail_controller.g.dart';

class ListDetailController = _ListDetailControllerBase
    with _$ListDetailController;

abstract class _ListDetailControllerBase with Store {
  final GetMovieDetailUseCaseImpl _getMovieDetailUseCase;

  _ListDetailControllerBase({
    required GetMovieDetailUseCaseImpl getMovieDetailUseCase,
  }) : _getMovieDetailUseCase = getMovieDetailUseCase;

  @observable
  AppState state = StartAppState();

  @observable
  MovieDetailEntity? movieDetail;

  @observable
  String genres = "";

  @action
  void load() {
    state = LoadAppState();
    _getMovieDetailUseCase.call(GetMovieDetailUseCaseParam(429)).then((movie) {
      List<String>? genresList =
          movie.genres?.map((e) => e.name ?? "").toList();
      if (genresList != null) {
        genres = genresList.join(', ');
      }
      movieDetail = movie;
      state = DataAppState<MovieDetailEntity>(movie);
    });
  }
}
