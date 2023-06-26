 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_appp/core/utils/enums.dart';
import 'package:movie_appp/movies/data/data_sources/movie_remote_datasource.dart';
import 'package:movie_appp/movies/data/repositories/Movie_Repositry.dart';
import 'package:movie_appp/movies/domain/repositories/Base_Movies_Repository.dart';
import 'package:movie_appp/movies/domain/use_cases/getNowPlayingUseCase.dart';
import 'package:movie_appp/movies/presentation/controllar/movie_state.dart';
import 'package:movie_appp/movies/presentation/controllar/movies_event.dart';

class MoviesBloc extends Bloc<MoviesEvent,MoviesState>{
  MoviesBloc(): super (const MoviesState()){
    on<GetNowPlayingMoviesEvent>((event, emit) async{
      BaseMovieRemoteDataSource baseMovieRemoteDataSource=MovieRemoteDataSource();
      BaseMoviesRepository baseMoviesRepository=MovieRepository(baseMovieRemoteDataSource);
      final result =await  GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
      emit(const MoviesState(nowPlayingState: RequestState.loaded));
      print(result);
    });
  }
}