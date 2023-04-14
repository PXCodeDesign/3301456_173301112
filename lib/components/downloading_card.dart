import 'package:flutter/material.dart';
import 'package:movie_app/movie/movie.dart';

class DownloadingCard extends StatelessWidget {
  final Model movie;
  const DownloadingCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Row(
        children: [
          SizedBox(
            width: 160,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                child: Image.asset(
                  movie.image!,
                  width: 160,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
            width: 150,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(movie.name!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                Text(movie.year!,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
            width: 32,
            child: IconButton(
                icon: Icon(
                  Icons.downloading_sharp,
                  size: 32,
                  color: Colors.white,
                ),
                onPressed: null),
          ),
        ],
      ),
    );
  }
}
