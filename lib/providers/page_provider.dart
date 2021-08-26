import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class PageProvider extends ChangeNotifier {

  PageController scrollController = new PageController();
  List<String> _pages = ['home', 'about', 'pricing', 'contact', 'location'];

  createScrollController(String routeName) {
    this.scrollController = new PageController(initialPage: getPageIndex(routeName));
  }

  int getPageIndex(String routeName) {
    return (_pages.indexOf(routeName) == -1)
          ? 0
          : _pages.indexOf(routeName);
  }

  goTo(int index) {
    window.history.pushState(null, '', '#/${ _pages[index] }');

    scrollController.animateToPage(index,
    duration: Duration(milliseconds: 300),
    curve: Curves.easeInOut
    );
  }

}