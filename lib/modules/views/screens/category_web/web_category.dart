import 'package:flutter/material.dart';
import 'package:mirror_wall/modules/views/componets/web_cat/design_cat_web.dart';

class WebCategory extends StatelessWidget {
  const WebCategory({super.key});

  @override
  Widget build(BuildContext context) {
    var webData = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Web View Demo $webData'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElementWidget(
              name: 'Google',
              url: 'https://www.google.com',
            ),
            SizedBox(height: 20),
            ElementWidget(
              name: 'JavaTPoint',
              url: 'https://www.javatpoint.com',
            ),
          ],
        ),
      ),
    );
  }
}
