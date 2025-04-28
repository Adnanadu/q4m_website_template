import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, required this.searchController});

  final SearchController searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        backgroundColor: WidgetStateProperty.all(Colors.grey.shade100),
        controller: searchController,
        constraints: BoxConstraints(minHeight: 40),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 16)),
        // controller: searchController,
        leading: Icon(Icons.search, color: Colors.black),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        hintText: 'Search...',
        onChanged: (value) {},
      ),
    );
  }
}
