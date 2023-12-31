import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall/modules/models/bookmark_model.dart';
import 'package:mirror_wall/modules/models/text_controller_model.dart';

class CatProvider extends ChangeNotifier {
  late InAppWebViewController _webViewController;
  List<Bookmark> bookmarks = [];

  TextControllerModel textControllerModel = TextControllerModel(
    titleTxt: TextEditingController(text: ''),
  );

  void setWebViewController(InAppWebViewController controller) {
    _webViewController = controller;
  }

  Future<void> delayedTask() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  void reloadWebView() {
    if (_webViewController != null) {
      _webViewController.reload();
    }
  }

  void goBack() {
    if (_webViewController != null) {
      _webViewController.goBack();
    }
  }

  void goHome(String url) {
    _webViewController.loadUrl(
      urlRequest: URLRequest(
        url: WebUri(url),
      ),
    );
  }

  void addBookmark(String url) {
    bookmarks.add(Bookmark(title: textControllerModel.titleTxt.text, url: url));
    notifyListeners();
    textControllerModel.titleTxt.clear();
  }

  void goForward() {
    if (_webViewController != null) {
      _webViewController.goForward();
    }
  }
}
