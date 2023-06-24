import 'package:dartz/dartz.dart';
import 'package:movie_appp/core/error/failur.dart';
import 'package:movie_appp/movies/domain/entities/movie.dart';
import 'package:movie_appp/movies/domain/repositories/Base_Movies_Repository.dart';

class GetPopularMovieSUseCase{
  late final BaseMoviesRepository baseMoviesRepository;
  GetPopularMovieSUseCase(this.baseMoviesRepository);
  Future<Either<Failure,List<Movie>>> execute() async{
    return await baseMoviesRepository.getPopularMovie();
  }
}