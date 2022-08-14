import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_m2y/comom/app_state/app_state.dart';
import 'package:project_m2y/features/components/list_detail/list_detail_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_m2y/features/components/list_movie/list_movie_controller.dart';
import 'package:project_m2y/layers/data/data_sources/similar_movie_result_data_source.dart';
import 'package:project_m2y/layers/data/remotes/similar_movie_result_remote_data_source_impl.dart';
import 'package:project_m2y/layers/data/repositories/similar_movie_result_repository_impl.dart';
import 'package:project_m2y/layers/domain/repositories/similar_movie_result_repository.dart';
import 'package:project_m2y/layers/domain/usecases/get_similar_movie_result_use_case_impl.dart';

class ListMovieWidget extends StatefulWidget {
  const ListMovieWidget({super.key});

  @override
  State<ListMovieWidget> createState() => _ListMovieWidgetState();
}

class _ListMovieWidgetState extends State<ListMovieWidget> {
  late SimilarMovieResultRepository _movieResultRepository;
  SimilarMovieResultDataSource dataSource =
      SimilarMovieResultRemoteDataSourceImpl(Dio());

  late GetSimilarMovieResultUseCaseImpl _getSimilarMovieResultUseCase;
  late ListMovieController _controller;

  @override
  void initState() {
    super.initState();
    _movieResultRepository = SimilarMovieResultRepositoryImpl(dataSource);
    _getSimilarMovieResultUseCase =
        GetSimilarMovieResultUseCaseImpl(_movieResultRepository);
    _controller = ListMovieController(_getSimilarMovieResultUseCase);
    _controller.load();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (_controller.similarMovieResultState is LoadAppState) {
        return _load();
      }
      return CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            forceElevated: true,
            primary: true,
            snap: true,
            backgroundColor: Colors.black,
            flexibleSpace: ListDetailWidget(),
            expandedHeight: 400,
            collapsedHeight: 100,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var result = _controller.listResult?[index];
                // var results = state.data[index];
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
                              "https://image.tmdb.org/t/p/w500/${result?.posterPath}",
                              fit: BoxFit.cover,
                            ),
                          ),
                          _size(10, null),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                result?.originalTitle ?? "",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              _size(null, 5),
                              Text(
                                "${result?.releaseDate!.year} ",
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: _controller.listResult?.length,
            ),
          ),
        ],
      );
    });
  }

  Widget _load() {
    return const Center(child: CircularProgressIndicator());
  }
}

Widget _size(double? width, double? height) {
  return SizedBox(
    width: width,
    height: height,
  );
}

//  SelectedMovieWidget(
//                 titleMovie: _controller.movieDetail?.title ?? "",
//                 voteAverage: _controller.movieDetail?.voteAverage ?? 0,
//                 image:
//                     "https://image.tmdb.org/t/p/w500/${_controller.movieDetail?.backdropPath}",
//               ),
