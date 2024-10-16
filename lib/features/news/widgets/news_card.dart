import 'package:flutter/material.dart';

import 'package:ysec_stock_market_app/features/news/models/single_new_model.dart';
import 'package:ysec_stock_market_app/helpers/styles.dart';

class NewsCardWidget extends StatelessWidget {

  final String title;
  final List<Article> news;

  const NewsCardWidget({super.key, 
    required this.title,
    required this.news
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Divider(),
        Text(title, style: kCompanyNameHeading),
        SizedBox(
          height: 225,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,

            itemCount: news.length,
            itemBuilder: (BuildContext context, int i) => Padding(
              padding: const EdgeInsets.only(top: 8, right: 24),
              child: _renderNewsArticle(news[i])
            )
          ),
        )
      ],
    );
  }

  Widget _renderNewsArticle(Article singleNew) {

    return GestureDetector(
      child: SizedBox(
        width: 200,
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                singleNew.title ?? '', 
                style: const TextStyle(
                  height: 1.6,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color:  Color(0XFFc2c2c2)
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            Container(
              height: 125,
              decoration: BoxDecoration(
                image: DecorationImage( image: _imageIsValid(singleNew.urlToImage))
              ),
            ),
          ],
        ),
      ),
    );
  }

  ImageProvider _imageIsValid(String? url) {
    return url == null 
    ? const AssetImage('assets/images/default.jpg')
    : NetworkImage(url);
  }
}