import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_project_may/statemanagement/model/movie.dart';

/// 3 methode
/// kanikenda list
final List<Movie>movieList = List.generate(
    100, (index) => Movie(title: 'Movie $index',
  time: "${Random().nextInt(100)+(60)}minutes"));

// change notifier is to monitor the changes in ui and update it to the provider
class MovieProvider extends ChangeNotifier{

 /// two data venam main and wishlist
 /// homepageil kanikan thazhae
 final List<Movie>_movies =movieList;
 List<Movie>get movies =>_movies; // getter to access list of movies in home page
 final List<Movie>_wishlist=[];
 List<Movie>  get wishmovie=>_wishlist;

 void addtolist(Movie moviefromMain){
  _wishlist.add(moviefromMain);
  notifyListeners();/// mainpageil ninnu wishlistiloto add ayenkil athu ariyan ane notifylistener kodunathu
 }
 void removefromlist(Movie removedmovie){
  _wishlist.remove(removedmovie);
  notifyListeners();
 }
}