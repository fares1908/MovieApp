import 'package:flutter/material.dart';
import 'package:movie_appp/movies/domain/entities/movie.dart';

import 'movies/presentation/pages/movie_scareen.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:MoviesScreen() ,
    );
  }
}

