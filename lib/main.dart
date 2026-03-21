import 'package:flutter/material.dart';
import 'package:moviedb_app/design/colors.dart';
import 'package:moviedb_app/widgets/auth/auth_widget.dart';

void main() {
  runApp(const TheMovieDB());
}

class TheMovieDB extends StatelessWidget {
  const TheMovieDB({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheMovieDB',
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: primaryColor)),
      home: AuthWidget(),
    );
  }
}
