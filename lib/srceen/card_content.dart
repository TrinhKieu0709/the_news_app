import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String image;
  final String titleCard;
  final String contentCard;
  final String auhtor;
  final String date;
  final String imageAuhtor;

  const NewsCard(
      {super.key,
      required this.image,
      required this.titleCard,
      required this.auhtor,
      required this.date,
      required this.contentCard,
      required this.imageAuhtor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Stack(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  height: 340,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                color: Colors.white38,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleCard,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            contentCard,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            auhtor,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class MaterialCard extends StatelessWidget {
  final String imageMaterial;
  final String contentMaterial;
  final String typeMaterial;

  const MaterialCard(
      {super.key,
      required this.imageMaterial,
      required this.contentMaterial,
      required this.typeMaterial});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              imageMaterial,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  contentMaterial,
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
                    typeMaterial,
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
    );
  }
}
