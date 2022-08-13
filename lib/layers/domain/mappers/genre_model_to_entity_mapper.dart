import 'package:project_m2y/layers/data/models/genre_model.dart';
import 'package:project_m2y/layers/domain/entitys/genre_entity.dart';

class GenreModelToEntityMapper {
  final Genre _genreModel;

  GenreModelToEntityMapper(this._genreModel);

  GenreDataEntity toEntity() {
    return GenreDataEntity(_genreModel.id, _genreModel.name);
  }
}
