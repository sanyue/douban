import 'package:flutter/material.dart';
import 'home_movie_item.dart';
import '../../model/home_model.dart';
import '../../service/home_request.dart';

class SYHomeContent extends StatefulWidget {
  @override
  _SYHomeContentState createState() => _SYHomeContentState();
}

class _SYHomeContentState extends State<SYHomeContent> {

  List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();
    Future result = SYHomeRequest.requestMovieList(0);
    result.then((value) {
      setState(() {
        movies.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return SYHomeMovieItem(movies[index]);
        });
  }
}
