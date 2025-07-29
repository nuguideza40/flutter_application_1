 import 'package:flutter/material.dart' show AppBar, BorderRadius, BoxDecoration, BuildContext, Center, Color, ColorScheme, Colors, Container, EdgeInsets, FloatingActionButton, Icon, Icons, MaterialApp, Scaffold, StatelessWidget, Text, ThemeData, Widget, runApp; // Import ไลบรารี Material ของ Flutter

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    const _ = const Color.fromARGB(255, 60, 8, 184);
    var container = Container(
            padding:const EdgeInsets.all(16.0),
            decoration:BoxDecoration(
              color:const Color.fromARGB(255, 59, 211, 39),
              borderRadius: BorderRadius.circular(20.0)) ,
            width: 300.0,
            height: 200.0,
            color: Colors.amber);
    var materialApp = MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(96, 26, 6, 73),
        ),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      title: 'Flutter Demo',
      home: Scaffold(
        // โครงสร้างหน้าจอพื้นฐาน
        appBar: AppBar(
          title: const Text('Chapter 3 Lab '),
          backgroundColor: const Color.fromARGB(255, 9, 102, 32),
        ),
        body: Center(
          child: container,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // การกระทำที่จะทำเมื่อกดปุ่ม
            print('FAB Pressed!');
          },
          child: const Icon(Icons.add), // ไอคอนสำหรับปุ่ม
        ),
      ),
    );
    return materialApp;
  }
} 
Future<void> main() async {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
  title: 'My Awesome App',
  debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ debug
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
  ),
  home: const MyHomePage()
    );
  }
}