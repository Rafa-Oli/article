import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardNews extends StatefulWidget {
  const CardNews({super.key});

  @override
  State<CardNews> createState() => _CardNewsState();
}

class _CardNewsState extends State<CardNews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 320,
                child: CachedNetworkImage(
                    imageUrl: 'https://imgur.com/8CofVPe.jpg')),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 320,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Como usar e aplicar variants do Figma no seu dia a dia de trabalho',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    key: const Key('url_image_avatar'),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0, color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: CachedNetworkImage(
                      imageUrl: 'https://imgur.com/ykFTULU.jpg',
                      width: 32,
                      fit: BoxFit.cover,
                      height: 32,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Clarissa Sampaio')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
