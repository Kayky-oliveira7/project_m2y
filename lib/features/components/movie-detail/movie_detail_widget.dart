import 'package:flutter/material.dart';

class MovieDetailWidget extends StatelessWidget {
  const MovieDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 350,
          color: Colors.grey.shade900,
        ),
        _size(10, null),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "The Very Best of\nJohnny Depp",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              )
            ],
          ),
        ),
        _size(10, null),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 25,
              ),
              _size(null, 5),
              const Text(
                "1.2 likes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.contrast,
                size: 25,
              ),
              _size(null, 5),
              const Text(
                "3 of 10 watched",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        _size(10, null),
      ],
    );
  }

  Widget _size(double? height, double? width) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
