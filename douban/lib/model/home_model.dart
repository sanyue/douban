
class Person {
  String name;
  String avatarURL;

  // 自定义构造函数
  Person.fromMap(Map<String,dynamic> json){
    this.name = json['name'];
    this.avatarURL = json['avatars']['large'];
  }
}

// 演员
class Actor extends Person{
  Actor.fromMap(Map<String,dynamic> json) : super.fromMap(json);
}

class Director extends Person {
  Director.fromMap(Map<String,dynamic> json) : super.fromMap(json);
}

int counter = 1;

class MovieItem{
  int rank;                // 自定义参数【排序】
  String imageURL;
  String title;
  String playDate;
  double rating;
  String originTitle;      // 描述
  List<String> genres;
  List<Actor> casts;
  Director director;

  MovieItem.fromMap(Map<String, dynamic> json) {
    this.rank = counter++;
    this.imageURL = json['images']['medium'];
    this.title = json['title'];
    this.playDate = json['year'].toString();
    this.rating = json['rating']['average'];
    this.originTitle = json['original_title'];
    this.genres = json['genres'].cast<String>();
    this.casts = (json['casts'] as List<dynamic>).map((item){
      return Actor.fromMap(item);
    }).toList();
    this.director = Director.fromMap(json['directors'][0]);
  }

  @override
  String toString() {
    return 'MovieItem{rank: $rank, imageURL: $imageURL, title: $title, playDate: $playDate, rating: $rating, originTitle: $originTitle, genres: $genres, casts: $casts, director: $director}';
  }
}