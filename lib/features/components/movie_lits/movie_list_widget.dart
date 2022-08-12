import 'package:flutter/material.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 355,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Divider(),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 120,
                          color: Colors.red,
                        ),
                        _size(10, null),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Edward Scissorhands",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
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
            childCount: 10,
          ),
        ),
      ],
    );
  }

  Widget _size(double? width, double? height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
