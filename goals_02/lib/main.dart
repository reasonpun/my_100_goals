import 'package:flutter/material.dart';
import 'package:flutter_mvvm_introduction/pages/movie_list_page.dart';
import 'package:flutter_mvvm_introduction/view_models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies",
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: MovieListPage(),
      ),
    );
  }
}
