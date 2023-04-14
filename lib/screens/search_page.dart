import 'package:flutter/material.dart';
import 'package:movie_app/components/appbars.dart';
import 'package:movie_app/components/bottom_bar.dart';
import 'package:movie_app/components/search.dart';
import 'package:movie_app/movie/movie.dart';
import 'package:movie_app/screens/detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

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
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBars(),
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
