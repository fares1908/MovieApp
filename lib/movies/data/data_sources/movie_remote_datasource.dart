import 'package:dio/dio.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/network/ApiConstance.dart';
import '../../../core/network/error_massage_model.dart';
import '../models/Movie_Model.dart';
  abstract class BaseMovieRemoteDataSource{
    Future<List<MovieModel>>getNowPlayingMovies();
    Future<List<MovieModel>>getPopularMovies();
    Future<List<MovieModel>>getTopRateMovies();

  }
class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>>getNowPlayingMovies() async {
    final response =await Dio().get(
        ApiConstance.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
        return List<MovieModel>.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e))
        );
    }else{
      throw(ServerException(errorMessageModel:ErrorMessageModel.fromJson(response.data)));
      // throw(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async{
    final response =await Dio().get(
        ApiConstance.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e))
      );
    }else{
      throw(ServerException(errorMessageModel:ErrorMessageModel.fromJson(response.data)));
      // throw(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRateMovies()async {
    final response =await Dio().get(
        ApiConstance.topRateMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e))
      );
    }else{
      throw(ServerException(errorMessageModel:ErrorMessageModel.fromJson(response.data)));
      // throw(ErrorMessageModel.fromJson(response.data));
    }
  }

}
