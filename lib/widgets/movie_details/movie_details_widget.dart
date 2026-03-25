import 'package:flutter/material.dart';
import 'package:moviedb_app/design/styles.dart';
import 'package:moviedb_app/widgets/movie_details/movie_details_info.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({super.key, required this.movieId});

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Военная машина", style: titleAppBar),
      ),
      body: ListView(
        children: [MovieDetailsInfo()],
      ),
    );
  }
}
