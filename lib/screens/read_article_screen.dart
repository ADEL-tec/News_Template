import 'package:flutter/material.dart';

import '../models/article.dart';

class ReadArticleScreen extends StatelessWidget {
  static const routeName = '/read-article';
  const ReadArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 15.0;
    final Article article =
        ModalRoute.of(context)!.settings.arguments as Article;
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
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
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
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  icon: const Icon(Icons.ios_share_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.black,
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  icon: const Icon(Icons.book_outlined),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: horizontalPadding, right: horizontalPadding, top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(article.authorImage),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        '${article.author} . ${article.date} . ${article.type}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(article.title,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 20),
                Container(
                  height: 300,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(article.imageUrl),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(article.body,
                    style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(1, 3),
                      blurRadius: 20,
                      spreadRadius: 2)
                ]),
            child: Row(
              children: [
                IconButton(
                  color: Colors.black,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey.shade200)),
                  icon: const Icon(Icons.favorite_border_rounded),
                  onPressed: () {},
                ),
                const Text('8.6K'),
                const SizedBox(width: 10),
                IconButton(
                  color: Colors.black,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey.shade200)),
                  icon: const Icon(Icons.message_outlined),
                  onPressed: () {},
                ),
                const Text('15K'),
                const SizedBox(width: 10),
                IconButton(
                  color: Colors.black,
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  icon: const Icon(
                    Icons.headset_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
