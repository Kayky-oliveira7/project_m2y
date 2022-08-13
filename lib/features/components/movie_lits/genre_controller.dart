import 'package:mobx/mobx.dart';
import 'package:project_m2y/comom/app_state/app_state.dart';
import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';
import 'package:project_m2y/layers/domain/usecases/get_genre_use_case_impl.dart';
part 'genre_controller.g.dart';

class GenreController = _GenreControllerBase with _$GenreController;

abstract class _GenreControllerBase with Store {
  final GetGenreUseCaseImpl _genreUseCaseImpl;

  _GenreControllerBase(this._genreUseCaseImpl);

  @observable
  AppState state = StartAppState();

  @action
  void load() {
    _genreUseCaseImpl.call(Param(GenreEntity([]))).then((genre) {
      state = DataAppState<List<GenreDataEntity>>(genre);
    });
  }
}
