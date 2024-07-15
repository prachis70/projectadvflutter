import 'package:flutter/material.dart';

import '../../../utils/global.dart';
import '../../../utils/list.dart';

class QuoteProvider extends ChangeNotifier {
  String? quote;
  String? author;

  void addData() {
    quote = txtQuote.text;
    author = txtAuthor.text;
    notifyListeners();
  }

  void addQuoteList() {
    quoteList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();
  }

  void removeData(int index) {
    quoteList.removeAt(index);
    notifyListeners();
  }
}