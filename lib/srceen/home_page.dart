import 'package:flutter/material.dart';
import 'package:the_news_app/model/article_model.dart';
import 'package:the_news_app/srceen/card_content.dart';
import 'package:the_news_app/srceen/title_Type.dart';

import 'detail_content_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final Type = ['Technology', 'Sport', 'Culture', 'Education', 'Travel'];
  int Selected = 0;
  final List titleType = [
    // tea type, isselected
    [
      'Technology',
      true,
    ],
    [
      'Sport',
      false,
    ],
    [
      'Culture',
      false,
    ],
    [
      'Travel',
      false,
    ],
  ];

  void TypeSelected(int index) {
    setState(() {
      // this for loop makes every selection false
      for (int i = 0; i < titleType.length; i++) {
        titleType[i][1] = false;
      }
      titleType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.blue),
          title: Container(
            alignment: Alignment.bottomRight,
            // child: Image.asset(
            //   'assets/bd1a59f83ebe58528a89e0041ae9fc34.jpeg',
            //   width: 50,
            //   height: 50,
            // ),
            child: ClipRRect(
              borderRadius: (BorderRadius.all(
                Radius.circular(15),
              )),
              child: Image.asset(
                'assets/bd1a59f83ebe58528a89e0041ae9fc34.jpeg',
                height: 50,
                width: 50,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Breakings News',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    NewsCard(
                      image: 'assets/3ebb4b70ca8072ad3af737f1c17e07eb.jpeg',
                      titleCard: 'India accidentally Pakistan',
                      auhtor: 'Space',
                      date: '3 hours ago',
                      imageAuhtor: 'assets/37078542746.png',
                      contentCard: 'Japan should consider building',
                    ),
                    NewsCard(
                      image: 'assets/3ebb4b70ca8072ad3af737f1c17e07eb.jpeg',
                      titleCard: 'SpaceX',
                      auhtor: 'Space',
                      date: '3 hours ago',
                      imageAuhtor: 'assets/37078542746.png',
                      contentCard:
                          'Ukraine war: The war is static, but ousting Russia is a seismic task',
                    ),
                    NewsCard(
                      image: 'assets/3ebb4b70ca8072ad3af737f1c17e07eb.jpeg',
                      titleCard: 'SpaceX',
                      auhtor: 'Space',
                      date: '3 hours ago',
                      imageAuhtor: 'assets/37078542746.png',
                      contentCard:
                          'What Chinas worst drought on record looks like',
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: titleType.length,
                    itemBuilder: (context, index) {
                      return TiteType(
                        titleType: titleType[index][0],
                        isselected: titleType[index][1],
                        onTap: () {
                          TypeSelected(index);
                        },
                      );
                    }),
              ),
              InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailContent()),
                  );
                }),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: 130,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/60dff4f321506af6452c225f9bb31dba.jpeg',
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20, left: 15),
                            child: Text(
                              'Iphone 13: will everyone make \n a small phone again?',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 140, top: 25),
                            height: 25,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Tech',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.blue[900]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Text('Menu'),
              ),
              ListTile(
                title: Text("data"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("data"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
