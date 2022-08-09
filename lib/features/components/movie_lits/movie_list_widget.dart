import 'package:flutter/material.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  width: 80,
                  height: 120,
                  color: Colors.red,
                ),
                _size(17, null),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Edward Scissorhands",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    _size(null, 5),
                    const Text(
                      "1990 Drama, Fantasu",
                      style: TextStyle(color: Colors.white, fontSize: 13.5),
                    ),
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 35),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: 20,
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
