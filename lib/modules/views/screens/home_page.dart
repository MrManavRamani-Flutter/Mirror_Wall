import 'package:flutter/material.dart';
import 'package:mirror_wall/modules/models/web_list_model.dart';
import 'package:mirror_wall/modules/providers/theme/theme_chenge_app_provider.dart';
import 'package:mirror_wall/modules/utils/global_list.dart';
import 'package:mirror_wall/modules/views/componets/design_cat_list.dart';
import 'package:mirror_wall/modules/views/componets/web_cat/design_cat_web.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  final String initialUrl = 'https://www.google.com/';

  @override
  Widget build(BuildContext context) {
    var themePro = Provider.of<ThemeChangeAppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web View Data'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('search');
            },
            icon: const Icon(Icons.search_sharp),
          ),
          Switch(
            value: !themePro.isLite,
            onChanged: (val) => themePro.themeCheck(),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Avtar Profile'),
              accountEmail: const Text(
                '+91 70965 84269',
                // style: TextStyle(color: Colors.grey),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/img/user/user.jpg'),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('bookmark');
              },
              leading: const Icon(Icons.bookmark_border),
              title: const Text('Bookmarks'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ...Global.webList.map(
            (e) {
              List<WebListModel> subCat = e['cat1'];
              return Column(
                children: [
                  DesignCatList(title: e['title'], img: e['img']),
                  ...subCat.map((e) {
                    String url = e.link;
                    String name = e.subTitle;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElementWidget(url: url, name: name),
                    );
                  }).toList(),
                ],
              );
            },
          ).toList(),
        ]),
      ),
    );
  }
}
