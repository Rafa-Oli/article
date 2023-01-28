import 'package:article/features/authentication/widgets/card_news.dart';
import 'package:article/features/authentication/widgets/header_article.dart';
import 'package:flutter/material.dart';

import 'features/authentication/widgets/header_compact.dart';

class HomeScreen extends StatefulWidget {
  static String route = '$HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderArticle(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Olá Daniela',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            Text(
              'Veja aqui as novidades do mundo do design e fique por dentro do que acontece',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Para você',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardNews(),
                    CardNews(),
                    CardNews(),
                    CardNews(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
