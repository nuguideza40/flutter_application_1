import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    const color = const Color.fromARGB(255, 60, 8, 184);
    var container = Container(
            padding:const EdgeInsets.all(16.0),
            decoration:BoxDecoration(
              color:Colors.greenAccent,
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
