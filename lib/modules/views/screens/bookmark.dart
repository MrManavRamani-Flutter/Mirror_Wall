import 'package:flutter/material.dart';
import 'package:mirror_wall/modules/providers/cat_provider/cat_provider.dart';
import 'package:mirror_wall/modules/views/screens/web_page_detail/web_view_page.dart';
import 'package:provider/provider.dart';

class BookmarkDesign extends StatefulWidget {
  const BookmarkDesign({super.key});

  @override
  State<BookmarkDesign> createState() => _BookmarkDesignState();
}

class _BookmarkDesignState extends State<BookmarkDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark'),
        centerTitle: true,
      ),
      body: ListView(
        children: Provider.of<CatProvider>(context).bookmarks.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebViewPage(url: e.url),
                ),
              );
            },
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                child: Text(
                  e.title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
