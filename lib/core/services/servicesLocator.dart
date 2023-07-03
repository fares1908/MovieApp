import 'package:get_it/get_it.dart';
import 'package:movie_appp/movies/data/data_sources/movie_remote_datasource.dart';
import 'package:movie_appp/movies/data/repositories/Movie_Repositry.dart';
import 'package:movie_appp/movies/domain/repositories/Base_Movies_Repository.dart';
import 'package:movie_appp/movies/domain/use_cases/getNowPlayingUseCase.dart';

final sl = GetIt.instance;
class ServicesLocator{
  void inti(){

    //use case
    //هنا بيشاور علي basemovie repostiroy
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    //repo
    sl.registerLazySingleton<BaseMoviesRepository>(() =>MovieRepository(sl()));
    //Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() =>MovieRemoteDataSource());
  }
}