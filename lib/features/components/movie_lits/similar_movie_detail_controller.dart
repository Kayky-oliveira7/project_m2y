import 'package:mobx/mobx.dart';
import 'package:project_m2y/comom/app_state/app_state.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/usecases/get_similar_movie_detail_use_case_impl.dart';
part 'similar_movie_detail_controller.g.dart';

class SimilarMovieDetailController = _SimilarMovieDetailControllerBase
    with _$SimilarMovieDetailController;

abstract class _SimilarMovieDetailControllerBase with Store {
  final GetSimilarMovieDetailUseCaseImpl _getSimilarMovieDetailUseCaseImpl;

  _SimilarMovieDetailControllerBase(this._getSimilarMovieDetailUseCaseImpl);

  @observable
  AppState state = StartAppState();

  @action
  void load() {
    state = LoadAppState();
    _getSimilarMovieDetailUseCaseImpl
        .call(
      Param(
        SimilarMovieDetailEntity(
            page: 1, results: [], totalPages: 2, totalResults: 2),
      ),
    )
        .then((value) {
      state = DataAppState<List<ResultEntity>>(value);
    });
  }
}
