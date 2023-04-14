import 'package:movie_app/movie/movie.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screens/detail_page.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    List<Model> modelMbList = trending.map((mb) => Model.fromJson(mb)).toList();
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Trendler",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: modelMbList.length,
              itemBuilder: (context, index) => Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(model: modelMbList[index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      height: 160,
                      width: 110,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          modelMbList[index].image!,
                          height: 160,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
