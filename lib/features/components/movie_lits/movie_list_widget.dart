import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_m2y/comom/app_state/app_state.dart';
import 'package:project_m2y/features/components/button_favorite/button_favorite_widget.dart';
import 'package:project_m2y/features/components/movie_lits/similar_movie_detail_controller.dart';
import 'package:project_m2y/layers/data/data_sources/similar_movie_detail_data_source.dart';
import 'package:project_m2y/layers/data/remotes/similar_movie_detail_remote_data_source_impl.dart';
import 'package:project_m2y/layers/data/repositories/similar_movie_detail_repository_impl.dart';
import 'package:project_m2y/layers/domain/entitys/similar_movie_detail_entity.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_detail_repository.dart';
import 'package:project_m2y/layers/domain/usecases/get_similar_movie_detail_use_case_impl.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  late SimililarMovieDetailRepository _simililarMovieDetailRepository;
  SimilarMovieDetailDataSource dataSource =
      SimilarMovieDetailRemoteDataSourceImpl(Dio());
  late GetSimilarMovieDetailUseCaseImpl _getSimilarMovieDetailUseCaseImpl;
  late SimilarMovieDetailController _controller;

  @override
  void initState() {
    _simililarMovieDetailRepository =
        SimilarMovieDetailRepositoryImpl(dataSource);
    _getSimilarMovieDetailUseCaseImpl =
        GetSimilarMovieDetailUseCaseImpl(_simililarMovieDetailRepository);
    _controller =
        SimilarMovieDetailController(_getSimilarMovieDetailUseCaseImpl);

    super.initState();
    _controller.load();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return _listMovie(_controller.state);
      },
    );
  }

  Widget _listMovie(AppState state) {
    if (state is DataAppState<List<ResultEntity>>) {
      for (var index = 0; index < state.data.length; index++) {
        var results = state.data[index];
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              forceElevated: true,
              primary: true,
              snap: true,
              backgroundColor: Colors.red,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500/${results.backdropPath}",
                      ),
                      fit: BoxFit.cover),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const Spacer(),
                    _selectedMovie(
                      results.originalTitle ?? "",
                      results.voteAverage ?? 0,
                    ),
                  ],
                ),
              ),
              expandedHeight: 400,
              collapsedHeight: 100,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var results = state.data[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Divider(),
                        Row(
                          children: [
                            SizedBox(
                              width: 90,
                              height: 120,
                              child: Image.network(
                                "https://image.tmdb.org/t/p/w500/${results.posterPath}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            _size(10, null),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  results.originalTitle ?? "",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                _size(null, 5),
                                const Text(
                                  "1990 Drama, Fantasu",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.5),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                childCount: state.data.length,
              ),
            ),
          ],
        );
      }
    }
    return Container();
  }

  Widget _selectedMovie(String titleMovie, double voteAverage) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
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
                      titleMovie,
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
                      "${voteAverage.toString()} Likes",
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
      ),
    );
  }

  Widget _size(double? width, double? height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
