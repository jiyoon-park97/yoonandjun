import 'package:flutter/material.dart';

void main() {
  runApp(WeddingInvitationApp());
}

class WeddingInvitationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '모바일 청첩장',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: InvitationPage(),
    );
  }
}

class InvitationPage extends StatelessWidget {
  // 지도 URL
  final String mapUrl =
      'https://maps.google.com/?q=37.5665,126.9780'; // 예: 서울 시청 위치

  // 공유 텍스트
  final String shareText =
      '저희 결혼식에 초대합니다 💕\n날짜: 2025년 10월 10일\n장소: 서울웨딩홀\n자세한 정보는 청첩장을 확인해주세요!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(title: Text('💌 모바일 청첩장'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. 신랑신부 소개
            SectionTitle(title: '신랑 · 신부 소개'),
            Text(
              '신랑 고범준, 신부 박지윤\n\n서로를 존중하며 함께 걸어가고자 합니다. 따뜻한 마음으로 축복해 주세요.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),

            // 2. 일정 / 장소 정보
            SectionTitle(title: '결혼식 일정 및 장소'),
            Text(
              '📅 날짜: 2025년 10월 10일 (토) 오후 1시\n📍 장소: 서울웨딩홀 2층 루비홀',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            SizedBox(height: 32),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      '📌 $title',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.pink.shade700,
      ),
    );
  }
}
