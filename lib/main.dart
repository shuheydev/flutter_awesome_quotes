import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    '誰にもノックされないのなら,新しいドアを作ろう.', //ミルトン･バール
    '多くの場合,邪魔者は踏み台になるのだ.', //ウィリアム･プレスコット
    '抜け出すための一番の方法は,やり抜くこと', //ロバート･フロスト
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
        children: quotes
            .map((quote) => Text(
                  quote,
                  style: TextStyle(fontFamily: 'NotoSerifJP'),
                ))
            .toList(),
      ),
    );
  }
}
