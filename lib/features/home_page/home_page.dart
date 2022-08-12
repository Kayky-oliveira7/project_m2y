import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_m2y/features/components/movie_lits/movie_list_widget.dart';
import 'package:project_m2y/layers/data/data_sources/similar_movie_detail_data_source.dart';
import 'package:project_m2y/layers/data/models/similar_movie_detail_model.dart';
import 'package:project_m2y/layers/data/remotes/similar_movie_detail_remote_data_source_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SimilarMovieDetailDataSource _dataSource;
  @override
  void initState() {
    _dataSource = SimilarMovieDetailRemoteDataSourceImpl(Dio());
    super.initState();

    _dataSource
        .getSimilarMovieDetail(SimilarMovieDetailModel())
        .then((value) {});

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: MovieListWidget(),
      ),
    );
  }
}
