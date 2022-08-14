import 'package:flutter/material.dart';
import 'package:project_m2y/features/components/list_movie/list_movie_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListMovieWidget(),
      ),
    );
  }
}
