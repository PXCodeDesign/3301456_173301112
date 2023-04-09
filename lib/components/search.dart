import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key, required this.onSearch}) : super(key: key);

  final void Function(String searchQuery) onSearch;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          height: 50,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: TextField(
            onChanged: onSearch,
            controller: null,
            autofocus: false,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.white,
              hintText: 'Search..',
              hintStyle: TextStyle(color: Colors.white),
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            ),
          )),
    );
  }
}
