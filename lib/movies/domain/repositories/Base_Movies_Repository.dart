import 'package:dartz/dartz.dart';
import 'package:movie_appp/core/error/failur.dart';
import 'package:movie_appp/movies/domain/entities/movie.dart';



abstract class BaseMoviesRepository{
  Future<Either<Failure,List<Movie>>>  getNowPlayingMovie ();
  Future<Either<Failure,List<Movie>>> getPopularMovie ();
  Future<Either<Failure,List<Movie>>> getTopRateMovie ();
}