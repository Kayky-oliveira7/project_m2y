import 'package:flutter/material.dart';
import 'package:project_m2y/features/components/movie_lits/movie_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              color: Colors.blue,
            ),
            const MovieListWidget(),
          ],
        ),
      ),
    );
  }
}
