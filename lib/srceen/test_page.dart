import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:matcher/matcher.dart';
import 'package:the_news_app/model/article_model.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Text(
              article.title!


            ),
            Text(
              article.author


            ),
            Text(
              article.content!


            ),
            Text(
              article.source.name??''


            ),

          ],
        ),
        
      ),
    );
  }
}
