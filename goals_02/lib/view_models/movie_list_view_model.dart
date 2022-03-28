import 'package:flutter/material.dart';
import 'package:flutter_mvvm_introduction/services/webservice.dart';
import 'package:flutter_mvvm_introduction/view_models/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = <MovieViewModel>[];

  Future<void> fetchMovies(String keyword) async {
    final results = await Webservice().fetchMovies(keyword);
    movies = results.map((item) => MovieViewModel(movie: item)).toList();
    // print(movies);
    notifyListeners();
  }
}
