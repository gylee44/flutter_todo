import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _inputText = '';
  int _counter = 0;
  int _counter1 = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _showSnackbar(BuildContext context) {
    setState(() {
      _counter1++;
    });


    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(_counter1 < 5 ? '아무거나 자꾸 누르지 마세요😡': '더 눌러도 뭐 없습니다 진짜 그만 눌러요..')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이기용의 첫 Flutter 앱'),
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
              '안녕하세요 이기용입니다.',
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
                labelText: '아무거나 입력하세요',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
            SizedBox(height: 8),
            Text('입력된게 표시됩니다 -> $_inputText'),
            SizedBox(height: 16),

            // 버튼
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('카운터 증가'),
            ),
            Text('카운트: $_counter'),
            Text( _counter1 < 5 ? '5번 이상 누르지 마세요: $_counter1' : '말을 잘 안들으시네요👿' ),
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
                  title: Text('Kotlin'),
                  subtitle: Text('Android 공식 언어'),
                ),
                ListTile(
                  leading: Icon(Icons.web),
                  title: Text('Web 개발'),
                  subtitle: Text('HTML & CSS & JS'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}