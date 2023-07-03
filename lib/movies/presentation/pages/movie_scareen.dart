import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_appp/core/services/servicesLocator.dart';
import 'package:movie_appp/movies/data/data_sources/movie_remote_datasource.dart';
import 'package:movie_appp/movies/data/repositories/Movie_Repositry.dart';
import 'package:movie_appp/movies/domain/entities/movie.dart';
import 'package:movie_appp/movies/domain/repositories/Base_Movies_Repository.dart';
import 'package:movie_appp/movies/domain/use_cases/getNowPlayingUseCase.dart';
import 'package:movie_appp/movies/presentation/controllar/movie_state.dart';
import 'package:movie_appp/movies/presentation/controllar/movies_bloc.dart';
import 'package:movie_appp/movies/presentation/controllar/movies_event.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
      return MoviesBloc(sl())..add(GetNowPlayingMoviesEvent());
    }, child: BlocBuilder<MoviesBloc , MoviesState>(
      builder: (context, state) {

        return const Scaffold();
      },
    ));
  }
}
