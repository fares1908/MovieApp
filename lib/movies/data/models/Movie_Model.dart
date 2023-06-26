
import '../../domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genderId,
      required super.overview,
      required super.voteAverage,
      required super.releaseDate});
  factory MovieModel.fromJson(Map<String , dynamic> json)=>MovieModel(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      genderId: List<int>.from(json['genre_ids'].map((e) => e)),
      overview: json['overview'],
      voteAverage: json['vote_average'].toString(),
      releaseDate: json['release_date']
  );
}
