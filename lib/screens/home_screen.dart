import 'package:flutter/material.dart';
import 'package:news_temp/screens/read_article_screen.dart';

import '../models/article.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 15.0;
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                color: Colors.grey.withAlpha(100),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              color: Colors.black,
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              icon: const Icon(Icons.menu_rounded),
              onPressed: () {},
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(100),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  IconButton(
                    color: Colors.black,
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    icon: const Icon(Icons.search_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.black,
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: horizontalPadding, right: horizontalPadding, top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Breaking News",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Show More",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                buildBreakingNews(context, horizontalPadding),
                const SizedBox(height: 20),
                buildTabsButtons(),
                const SizedBox(height: 20),
                Text("Recommended for you",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                buildRecommendedList()
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar());
  }

  Widget buildRecommendedList() => ListView.builder(
        controller: ScrollController(),
        shrinkWrap: true,
        itemCount: articles.length,
        itemBuilder: (context, index) =>
            buildItemCard(context, articles[index]),
      );

  Widget buildItemCard(BuildContext context, Article article) =>
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ReadArticleScreen.routeName,
              arguments: article);
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          height: MediaQuery.of(context).size.width * 0.3,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.network(
                  article.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(article.authorImage),
                        ),
                        const SizedBox(width: 10),
                        Text('${article.author} . ${article.type}'),
                      ],
                    ),
                    Expanded(
                      child: Text(article.title,
                          overflow: TextOverflow.fade,
                          maxLines: 3,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold)),
                    ),
                    Text(article.date),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget buildTabsButtons() {
    final listTitles = [
      'All',
      '⚖️ Politic',
      '⚽️ Sport',
      '📚 Education',
      '🎮 Game',
      '✈️ Travel'
    ];
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listTitles.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: index == 0 ? Colors.blue : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(40)),
          child: Center(
              child: Text(
            listTitles[index],
            style: TextStyle(
                color: index == 0 ? Colors.white : Colors.grey.shade500,
                fontSize: 18),
          )),
        ),
      ),
    );
  }

  Widget buildBreakingNews(BuildContext context, double horizontalPadding) =>
      SizedBox(
        height: 300,
        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: articles.length,
          itemBuilder: (ctx, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ReadArticleScreen.routeName,
                  arguments: articles[index]);
            },
            child: Container(
              margin: EdgeInsets.only(right: horizontalPadding),
              clipBehavior: Clip.antiAlias,
              height: 300,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(articles[index].imageUrl),
                ),
              ),
              child: Stack(children: [
                Positioned.fill(
                    child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                )),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "🌐 World",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                                NetworkImage(articles[index].authorImage),
                          ),
                          const SizedBox(width: 10),
                          Text(articles[index].author,
                              style: const TextStyle(color: Colors.white)),
                        ],
                      ),
                      Text(articles[index].title,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24)),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      );
}
