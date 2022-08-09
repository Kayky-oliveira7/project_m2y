import 'package:flutter/material.dart';

class MovieDetailWidget extends StatelessWidget {
  const MovieDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: const [
              Text(
                "The Very Best of\nJohnny Depp",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          _size(10),
          Row(
            children: const [
              Text(
                "1.2 likes",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Text(
                "3 of 10 watched",
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _size(double height) {
    return SizedBox(
      height: height,
    );
  }
}
