import 'package:netflix/infrastructure/api_key.dart';

class ApiUrls {
  static const String kBaseUrl = 'https://api.themoviedb.org/3';
  static const String kImageUrl = 'https://media.themoviedb.org/t/p/w500_and_h282_face/';

  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?include_adult=false&language=en-US&page=1?api_key=$apiKey";


}
