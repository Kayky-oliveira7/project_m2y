import 'package:mobx/mobx.dart';
import 'package:project_m2y/comom/app_state/app_state.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_result_entity.dart';
import 'package:project_m2y/layers/domain/usecases/get_similar_movie_result_use_case_impl.dart';
part 'list_movie_controller.g.dart';

class ListMovieController = _ListMovieControllerBase with _$ListMovieController;

abstract class _ListMovieControllerBase with Store {
  final GetSimilarMovieResultUseCaseImpl _similarMovieResultUseCase;

  _ListMovieControllerBase(this._similarMovieResultUseCase);

  @observable
  AppState similarMovieResultState = StartAppState();

  @observable
  List<ResultEntity>? listResult;

  @action
  void load() {
    similarMovieResultState = LoadAppState();

    _similarMovieResultUseCase
        .call(
            GetSimilarMovieResultParam(429, "8008b4e2462dfb1c8a22227b418dcd70"))
        .then((result) {
      listResult = result;
      similarMovieResultState = DataAppState<List<ResultEntity>>(result);
    });
  }
}
