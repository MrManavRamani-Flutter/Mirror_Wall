import 'package:flutter/material.dart';
import 'package:mirror_wall/modules/views/screens/web_page_detail/web_view_page.dart';

class ElementWidget extends StatelessWidget {
  final String name;
  final String url;

  const ElementWidget({super.key, required this.url, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(name),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewPage(url: url),
            ),
          );
        },
      ),
    );
  }
}
