import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}
class GetNowPlayingMoviesEvent extends MoviesEvent{}

class GetPopularMoviesEvent extends MoviesEvent{}

class GetTopRatedMoviesEvent extends MoviesEvent{}
