import 'package:dartz/dartz.dart';
import 'package:movie_appp/core/error/exceptions.dart';
import 'package:movie_appp/core/error/failur.dart';
import 'package:movie_appp/movies/data/data_sources/movie_remote_datasource.dart';
import 'package:movie_appp/movies/domain/entities/movie.dart';
import 'package:movie_appp/movies/domain/repositories/Base_Movies_Repository.dart';

class MovieRepository extends BaseMoviesRepository{
  late final BaseMovieRemoteDataSource baseMoviesRepository;
  MovieRepository(this.baseMoviesRepository);
  @override
  Future<Either<Failure,List<Movie>>> getNowPlayingMovie() async{
   final result =await baseMoviesRepository.getNowPlayingMovies();
   try{
     return Right(result);
   }on ServerException catch(failure){
     return Left(ServerFailure(failure.errorMessageModel.statusMessage));
   }
  }

  @override
  Future<Either<Failure, List<Movie>> > getPopularMovie() async{
    final result=await baseMoviesRepository.getPopularMovies();
    try {
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRateMovie() async{
   final reslut=await baseMoviesRepository.getTopRateMovies();
   try{
     return Right(reslut);
   }on ServerException catch(failure){
     return left(ServerFailure(failure.errorMessageModel.statusMessage));
   }
  }




}