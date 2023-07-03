 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_appp/core/utils/enums.dart';
import 'package:movie_appp/movies/data/data_sources/movie_remote_datasource.dart';
import 'package:movie_appp/movies/data/repositories/Movie_Repositry.dart';
import 'package:movie_appp/movies/domain/repositories/Base_Movies_Repository.dart';
import 'package:movie_appp/movies/domain/use_cases/getNowPlayingUseCase.dart';
import 'package:movie_appp/movies/presentation/controllar/movie_state.dart';
import 'package:movie_appp/movies/presentation/controllar/movies_event.dart';

class MoviesBloc extends Bloc<MoviesEvent,MoviesState>{
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase): super (const MoviesState()){
    on<GetNowPlayingMoviesEvent>((event, emit) async{
      final result =await getNowPlayingMoviesUseCase.execute();
      emit(const MoviesState(nowPlayingState: RequestState.loaded));
      result.fold(
              (l) => emit(MoviesState(
                nowPlayingState: RequestState.error,
                nowPlayingMessage: l.message
              )),
              (r) =>  emit(MoviesState(
                  nowPlayingState: RequestState.loaded,
                 nowPlayingMovies: r,
              )));
      print(result);
    });
  }
}