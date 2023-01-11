import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Member Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "สุรราม พิมานคำ",
              imgPath: "assets/images/1.jpg",
              nickname: "Nick: ราม",
              ID: "Student ID: 633410034-8",
              fack: "Fackbook: Ram N O Ram",
              about: "คำอธิบาย: ทางที่ดีคือทางราดยาง"),
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "กฤตเมธ มุ้ยกระโทก",
              imgPath: "assets/images/2.jpg",
              nickname: "Nick: พุฒ",
              ID: "Student ID: 633410005-5",
              fack: "Fackbook: Kritameth Muikrathok",
              about: "คำอธิบาย: It's high noon.."),
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "สุรสิทธิ์ เลาหวิโรจน์",
              imgPath: "assets/images/3.jpg",
              nickname: "Nick: มาร์ค",
              ID: "Student ID: 633410035-6",
              fack: "Fackbook: Surasit Laohawiroj",
              about: "คำอธิบาย: Praise The Snail."),
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "พรชัย หอมพรมมา",
              imgPath: "assets/images/4.jpg",
              nickname: "Nick: มิตร",
              ID: "Student ID: 633410021-7",
              fack: "Fackbook: phornchai Hompromma",
              about: "คำอธิบาย: เช้าง่วง เที่ยงหิว เย็นนอน"),
        ],
      ),
    );
  }

  Widget Card(
      //กำหนดค่าที่ใช้รับในการส่ง
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgPath,
      required String nickname,
      required String ID,
      required String fack,
      required String about}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        //กำหนดค่าที่ใช้ส่ง
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                        Fackbook: fack,
                        About: about,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(imgPath)),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              //margin: EdgeInsets.all(10),
              color: color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(blocktext),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.Nickname,
      required this.imPath,
      required this.id,
      required this.Fackbook,
      required this.About});
  String name;
  String Nickname;
  String imPath;
  String id;
  String Fackbook;
  String About;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Member"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(id),
              Text(Nickname),
              Text(Fackbook),
              Text(About),
            ],
          ),
        ));
  }
}
