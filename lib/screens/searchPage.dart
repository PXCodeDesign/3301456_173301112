import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/components/bottomBar.dart';
import 'package:movie_app/components/search.dart';
import 'package:movie_app/movie/movie.dart';
import 'package:movie_app/screens/detailPage.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchQuery = '';
  final List<Model> _names = trending.map((mb) => Model.fromJson(mb)).toList();
  List<Model> _filteredNames =
      trending.map((mb) => Model.fromJson(mb)).toList();

  void _searchByName(String searchQuery) {
    setState(() {
      _searchQuery = searchQuery.toLowerCase();
      if (_searchQuery.isEmpty) {
        _filteredNames = List.from(_names);
      } else {
        _filteredNames = _names
            .where((names) =>
                names.name!.toLowerCase().contains(_searchQuery) ||
                names.category!.toLowerCase().contains(_searchQuery))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/movie.svg',
              fit: BoxFit.cover,
              height: 32,
            ),
            SizedBox(
              height: 32,
              width: 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(40),
                  child: Image.asset(
                    "assets/person.jpg",
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Search(
            onSearch: _searchByName,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
              ),
              itemCount: _filteredNames.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(model: _filteredNames[index]),
                      ),
                    );
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        _filteredNames[index].image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}