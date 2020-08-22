import 'package:flutter/material.dart';
import '../../model/home_model.dart';
import '../../model/home_model.dart';
import '../../widget/dashed_line.dart';
import '../../widget/star_rating.dart';

class SYHomeMovieItem extends StatelessWidget {
  final MovieItem movie;

  SYHomeMovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 10, color: Color(0xFFe8e8e8))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getContentHeader(),
          SizedBox(
            height: 10,
          ),
          _getContentInfo(),
          SizedBox(
            height: 10,
          ),
          _getContentFooter()
        ],
      ),
    );
  }

  // 1.级别
  Widget _getContentHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.all(
            Radius.circular(4.0)), // BorderRadiusDirectional.circular(4.0)
      ),
      child: Text(
        'No.${movie.rank}',
        style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  // 2.内容
  Widget _getContentInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getContentInfoImage(),
        SizedBox(width: 8,),
        _getContentInfoDetail(),
        SizedBox(width: 8,),
        _getContentInfoDashed(),
        SizedBox(width: 8,),
        _getContentInfoWish()
      ],
    );
  }

  // 2.1 内容图片
  Widget _getContentInfoImage() {
    return ClipRRect(
      child: Image(
        image: NetworkImage(movie.imageURL),
        height: 150,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    );
  }

  // 2.2 内容详情
  Widget _getContentInfoDetail() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getContentInfoDetailHeader(),
          SizedBox(
            height: 5,
          ),
          _getContentInfoDetailRating(),
          SizedBox(
            height: 5,
          ),
          _getContentInfoDetailDesc()
        ],
      ),
    );
  }

  // 2.2.1 内容详情头
  Widget _getContentInfoDetailHeader() {
    return Text.rich(TextSpan(children: [
      WidgetSpan(
        child: Icon(
          Icons.play_circle_outline,
          color: Colors.red,
          size: 24,
        ),
      ),
      TextSpan(
          text: movie.title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
      TextSpan(
          text: '(${movie.playDate})',
          style: TextStyle(fontSize: 14, color: Colors.grey))
    ]));
  }

  // 2.2.2 内容评分
  Widget _getContentInfoDetailRating() {
    return Row(
      children: [
        SYStarRating(
          rating: movie.rating,
          size: 24,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '${movie.rating}',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        )
      ],
    );
  }

  // 2.2.3 内容描述
  Widget _getContentInfoDetailDesc() {
    final genresString = movie.genres.join(' ');
    final castsString = movie.casts.map((actor) {
      return actor.name;
    }).join(' ');
    final directorString = movie.director.name;

    return Text('$genresString / $castsString / $directorString',
        style: TextStyle(fontSize: 16),
        maxLines: 2,
        overflow: TextOverflow.ellipsis
    );
  }

  // 2.3 虚线
  Widget _getContentInfoDashed(){
    return Container(
      height: 100,
      child: SYDashedLine(dashedHeight: 5,axis: Axis.vertical,),
    );
  }

  // 2.4 想看
  Widget _getContentInfoWish(){
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/home/wish.png',height: 40,),
          Text('想看',style: TextStyle(fontSize: 16,color: Colors.orange),),
        ],
      ),
    );
  }

  // 3.描述
  Widget _getContentFooter(){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xffe2e2e2),
        borderRadius: BorderRadiusDirectional.circular(4.0)
      ),
      child: Text(movie.originTitle,style: TextStyle(fontSize: 16),),
    );
  }

}
