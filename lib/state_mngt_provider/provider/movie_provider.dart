import 'dart:math';
import 'package:flutter/cupertino.dart';
import '../model/movie.dart';

final List<Movie> movielist = List.generate(
    100, (index) => Movie(title: "movie$index", time: "${Random().nextInt(100)+60}minutes"));



class MovieProvider extends ChangeNotifier{

 final List<Movie> _movies= movielist;
 List<Movie> get movies => _movies;

 final List<Movie> _wishlist=[];
 List<Movie> get wishlist=>_wishlist;

  void add_wishlist(Movie movies) {
   wishlist.add(movies);
   notifyListeners();
  }

  void remove_wishlist(Movie movies) {
   wishlist.remove(movies);
   notifyListeners();
  }

}