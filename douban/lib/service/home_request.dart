import 'http_request.dart';
import 'http_config.dart';
import '../model/home_model.dart';

class SYHomeRequest{
  static Future<List<MovieItem>> requestMovieList(int start) async {
    // 1.构建URL
    final movieURL="/movie/top250?start=$start&count=${SYHomeConfig.movieCount}";

    // 2.发送网络请求
    final result = await SYHttpRequest.get(movieURL);
    final subjects = result['subjects'];

    // 3.将map转成model
    List<MovieItem> movies = [];
    for (var item in subjects){
      movies.add(MovieItem.fromMap(item));
    }
    return movies;
  }
}
