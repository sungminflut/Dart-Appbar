import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 우측 상단 태그 삭제
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
      drawer: Drawer( // 열리는 햄버거 생성
        child: ListView(
          padding: EdgeInsets.zero, // 여백 지우기
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/cat1.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[ // 우측 상단 이미지 삽입
                CircleAvatar(
                  backgroundImage: AssetImage('assets/cat2.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/cat2.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('CAT'), // 필수 입력
              accountEmail: Text('cat@cat.com'), // 필수 입력
              onDetailsPressed:(){ // 메뉴 내 우측 화살표
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200], // 박스 배경색
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0), // 박스 왼쪽 하단 보더
                  bottomRight: Radius.circular(20.0) // 박스 오른쪽 하단 보더
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, // 좌측에 홈 아이콘 추가
              color: Colors.grey[850], // 홈 이이콘 색 변경
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add), // 플러스 아이콘 추가
            ),
            ListTile(
              leading: Icon(Icons.settings, // 좌측에 톱니바퀴 아이콘 추가
                color: Colors.grey[850], // 이이콘 색 변경
              ),
              title: Text('Setting'),
              onTap: (){
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add), // 플러스 아이콘 추가
            ),
            ListTile(
              leading: Icon(Icons.question_answer, // 좌측에 Q&A 아이콘 추가
                color: Colors.grey[850], // 이이콘 색 변경
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add), // 플러스 아이콘 추가
            ),
          ],
        ),
      ),
    );
  }
}
