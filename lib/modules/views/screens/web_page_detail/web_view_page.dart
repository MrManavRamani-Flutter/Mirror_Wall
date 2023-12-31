import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall/modules/providers/cat_provider/cat_provider.dart';
import 'package:provider/provider.dart';

class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    CatProvider catProvider = Provider.of<CatProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web View'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Consumer<CatProvider>(
          builder: (context, catProvider, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  child: Container(
                    color: Colors.greenAccent,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Provider.of<CatProvider>(context, listen: false)
                                .goBack();
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.refresh),
                          onPressed: () {
                            Provider.of<CatProvider>(context, listen: false)
                                .reloadWebView();
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.home_outlined),
                          onPressed: () {
                            Provider.of<CatProvider>(context, listen: false)
                                .goHome(url);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.bookmark_border),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text(
                                    'Add BookMark',
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        onSubmitted: (val) {
                                          catProvider
                                              .textControllerModel.titleTxt;
                                        },
                                        controller: catProvider
                                            .textControllerModel.titleTxt,
                                        keyboardType: TextInputType.text,
                                        decoration: const InputDecoration(
                                          hintText: 'Enter your Title',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Provider.of<CatProvider>(context,
                                                  listen: false)
                                              .addBookmark(url);
                                          Navigator.of(context).pop();
                                        },
                                        child: Card(
                                          elevation: 8,
                                          margin:
                                              const EdgeInsets.only(top: 15),
                                          child: Container(
                                            margin: const EdgeInsets.all(10),
                                            child: const Text("BookMark"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {
                            Provider.of<CatProvider>(context, listen: false)
                                .goForward();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 785,
                  child: InAppWebView(
                    initialUrlRequest: URLRequest(
                      url: WebUri(url),
                    ),
                    onWebViewCreated: (InAppWebViewController controller) {
                      catProvider.setWebViewController(controller);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
