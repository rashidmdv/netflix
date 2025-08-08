import 'package:netflix/infrastructure/api_key.dart';

class ApiUrls {
  static const String kBaseUrl = 'https://api.themoviedb.org/3';
  static const String kImageUrl =
      'https://media.themoviedb.org/t/p/w500_and_h282_face/';

  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const search =
      "$kBaseUrl/search/movie?include_adult=false&language=en-US&api_key=$apiKey";
  static const howAndNewMovie =
      "$kBaseUrl/discover/movie?api_key=$apiKey";
  static const howAndNewTv =
      "$kBaseUrl/discover/tv?api_key=$apiKey";

  // static const search = "$kBaseUrl/search/movie?include_adult=false&language=en-US&page=1?api_key=$apiKey";

  // https://api.themoviedb.org/3l/genre/movie/list?api_key=6e8e953d659e024ace01855d1c76049e

  // https://api.themoviedb.org/3l/search/movie?include_adult=false&language=en-US&page=1?api_key=6e8e953d659e024ace01855d1c76049e
}
