import 'package:flutter/material.dart';

class Search extends SearchDelegate
{
  List<String> searchterm = ['pencil', 'pen', 'brushes', 'paint', 'copies'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {

     return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  
  }

  @override
  Widget buildResults(BuildContext context) {
   List<String> matchquery = [];
    for (var sta in searchterm) {
      if (sta.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(sta);
      }
    }

    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var result = matchquery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];
    for (var sta in searchterm) {
      if (sta.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(sta);
      }
    }
    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var result = matchquery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

  

