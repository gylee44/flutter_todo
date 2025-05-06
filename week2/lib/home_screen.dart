import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _inputText = '';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('버튼이 눌렸어요!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자주 쓰는 위젯들'),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => _showSnackbar(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 텍스트 위젯
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // 이미지 위젯
            Image.network(
              'https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png',
              height: 150,
            ),
            SizedBox(height: 16),

            // 입력창
            TextField(
              decoration: InputDecoration(
                labelText: '이름을 입력하세요',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
            SizedBox(height: 8),
            Text('입력한 이름: $_inputText'),
            SizedBox(height: 16),

            // 버튼
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('카운터 증가'),
            ),
            Text('카운트: $_counter'),
            SizedBox(height: 16),

            // 리스트
            Text(
              '관심 기술 리스트',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('Flutter'),
                  subtitle: Text('UI 프레임워크'),
                ),
                ListTile(
                  leading: Icon(Icons.android),
                  title: Text('Android'),
                  subtitle: Text('모바일 OS'),
                ),
                ListTile(
                  leading: Icon(Icons.web),
                  title: Text('Web 개발'),
                  subtitle: Text('HTML/CSS/JS'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}