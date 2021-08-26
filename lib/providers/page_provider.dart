import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class PageProvider extends ChangeNotifier {

  PageController scrollController = new PageController();

  List<String> _pages = ['home', 'about', 'pricing', 'contact', 'location'];

  goTo(int index) {
    window.history.pushState(null, '', '#/${ _pages[index] }');

    scrollController.animateToPage(index,
    duration: Duration(milliseconds: 300),
    curve: Curves.easeInOut
    );
  }

}