import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_m2y/comom/app_state/app_state.dart';
import 'package:project_m2y/features/components/button_favorite/button_favorite_widget.dart';
import 'package:project_m2y/features/components/list_detail/list_detail_controller.dart';
import 'package:project_m2y/layers/data/data_sources/movie_detail_data_source.dart';
import 'package:project_m2y/layers/data/remotes/movie_detail_remote_data_source_impl.dart';
import 'package:project_m2y/layers/data/repositories/movie_detail_repository_impl.dart';
import 'package:project_m2y/layers/domain/repositories/movie_detail_repository.dart';
import 'package:project_m2y/layers/domain/usecases/get_movie_detail_use_case_impl.dart';

class ListDetailWidget extends StatefulWidget {
  const ListDetailWidget({super.key});

  @override
  State<ListDetailWidget> createState() => _ListDetailWidgetState();
}

class _ListDetailWidgetState extends State<ListDetailWidget> {
  late MovieDetailRepository _movieDetailRepository;
  MovieDetailDataSource dataSource = MovieDetailRemoteDataSourceImpl(Dio());
  late GetMovieDetailUseCaseImpl _getMovieDetailUseCase;
  late ListDetailController _controller;

  @override
  void initState() {
    super.initState();
    _movieDetailRepository = MovieDetailRepositoryImpl(dataSource);
    _getMovieDetailUseCase = GetMovieDetailUseCaseImpl(_movieDetailRepository);
    _controller = ListDetailController(
      getMovieDetailUseCase: _getMovieDetailUseCase,
    );
    _controller.load();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (_controller.state is LoadAppState) {
          return _load();
        }
        return Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(
                  "https://image.tmdb.org/t/p/w500/${_controller.movieDetail?.backdropPath}",
                ),
                fit: BoxFit.cover),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _size(null, 10),
                      Row(
                        children: [
                          Text(
                            _controller.movieDetail?.title ?? "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const ButtonFavoriteWidget(),
                        ],
                      ),
                      _size(null, 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 25,
                          ),
                          _size(5, null),
                          Text(
                            "${_controller.movieDetail?.voteAverage} Likes",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.contrast,
                            size: 25,
                            color: Colors.white,
                          ),
                          _size(5, null),
                          const Text(
                            "3 of 10 watched",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _size(double? width, double? height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }

  Widget _load() {
    return const Padding(
      padding: EdgeInsets.only(top: 150),
      child: Align(
        alignment: Alignment.topCenter,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
