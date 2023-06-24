import 'package:flutter/material.dart';
import 'package:movie_appp/movies/domain/entities/movie.dart';

import 'movies/presentation/pages/home_scareen.dart';

void main() {
  runApp(const MyApp());
  // var classa= Movie(id: 1, title: '2', backdropPath: '2', genderId: [], overview: '1', voteAverage:1, releaseDate:'1');
  // var classb= Movie(id: 1, title: '2', backdropPath: '2', genderId: [], overview: '1', voteAverage:1, releaseDate:'1');
  // bool x=(classb==classa);
  // print(x);
  // print(classb.hashCode);
  // print(classa.hashCode);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:faa() ,
    );
  }
}

