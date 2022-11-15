import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
          primarySwatch: Colors.red // Appbar 컬러
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0, // 입체감 없애기
        leading: IconButton( // 아이콘 버튼이나 위젯을 왼쪽에 배치할 때
          icon: Icon(Icons.menu), // 햄버거모양 아이콘
          onPressed: () { // 이벤트 정의
            print('menu button is clicked');
          },
        ),
        actions: <Widget>[ // 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
          IconButton(
            icon: Icon(Icons.shopping_cart), // 장바구니 아이콘
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search), // 돋보기모양 아이콘
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),

    );
  }
}
