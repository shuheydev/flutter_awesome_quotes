import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: '誰にもノックされないのなら,新しいドアを作ろう.', author: 'ミルトン･バール'),
    Quote(text: '多くの場合,邪魔者は踏み台になるのだ.', author: 'ウィリアム･プレスコット'),
    Quote(text: '抜け出すための一番の方法は,やり抜くこと', author: 'ロバート･フロスト'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(fontFamily: 'NotoSerifJP'),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}