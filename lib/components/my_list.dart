import 'package:movie_app/movie/movie.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screens/detail_page.dart';
import 'package:movie_app/screens/my_list_page.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

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
              children: [
                const Text("Listem",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    )),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyListPage()),
                    );
                  },
                  icon: const Icon(Icons.navigate_next,
                      size: 28, color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: modelMbList.length,
              itemBuilder: (context, index) {
                if (modelMbList[index].mylist!) {
                  return Column(
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
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
