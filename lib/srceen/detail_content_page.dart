import 'package:flutter/material.dart';
// import 'package:the_news_app/srceen/card_content.dart';//
import 'package:the_news_app/srceen/home_page.dart';

class DetailContent extends StatefulWidget {
  const DetailContent({super.key});

  @override
  State<DetailContent> createState() => _DetailContentState();
}

class _DetailContentState extends State<DetailContent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(scrollDirection: Axis.vertical, children: [
          Stack(
            children: <Widget>[
              Container(
                height: 400,
                width: 415,
                child: Image.asset(
                  'assets/aa033885bd297de7fdcca225c72798a3.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[400]),
                        child: Image.asset(
                          'assets/left.png',
                          fit: BoxFit.fill,
                          height: 30,
                          width: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  HomePage()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[400]),
                        child: Image.asset(
                          'assets/upload.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 180, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'President',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      '4 hours ago',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'How America Changed During Barack Obama’s Presidency',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 340),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      30,
                    ),
                    topRight: Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 130,
                          margin: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                child: Image.asset(
                                  'assets/bd1a59f83ebe58528a89e0041ae9fc34.jpeg',
                                  fit: BoxFit.fill,
                                  height: 27,
                                  width: 27,
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              const Text('Harry Pottter ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 70,
                          margin: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                child: Image.asset(
                                  'assets/wrist-watch.png',
                                  fit: BoxFit.fill,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              const Text('2 min ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 95,
                          margin: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                child: Image.asset(
                                  'assets/eye.png',
                                  fit: BoxFit.fill,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              const Text(
                                '234 views ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          Text(
                            'Packages with pipe bombs sent to Clinton, Obama, CNN; another package investigated in L.A.',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Pipe bombs sent to several prominent critics of President Donald Trump and to CNN New York newsroom triggered a nationwide investigation and bipartisan condemnation on Wednesday,The targets included former President Barack Obama, former Secretary of State Hillary Clinton, former Attorney General Eric Holder and former CIA Director John Brennan, officials and investigators said.Early Wednesday night, federal and local authorities were investigating a suspicious package "similar in appearance" to the earlier packages at a postal facility in south Los Angeles addressed to Rep. Maxine Waters, D-Calif., the FBI said. Los Angeles police said that the facility was evacuated before a bomb squad rendered the package safe and that the investigation had been turned over to the FBI.',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Pipe bombs sent to several prominent critics of President Donald Trump and to CNN New York newsroom triggered a nationwide investigation and bipartisan condemnation on Wednesday,The targets included former President Barack Obama, former Secretary of State Hillary Clinton, former Attorney General Eric Holder and former CIA Director John Brennan, officials and investigators said.Early Wednesday night, federal and local authorities were investigating a suspicious package "similar in appearance" to the earlier packages at a postal facility in south Los Angeles addressed to Rep. Maxine Waters, D-Calif., the FBI said. Los Angeles police said that the facility was evacuated before a bomb squad rendered the package safe and that the investigation had been turned over to the FBI.',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: const [
                    //       MaterialCard(
                    //           imageMaterial:
                    //               'assets/3d1893dfe62bbd1b37bc268050db535d.jpeg',
                    //           contentMaterial: '',
                    //           dateMaterial: ''),
                    //       MaterialCard(
                    //           imageMaterial:
                    //               'assets/7aa26884bec7632d6480a953fd4117b5.jpeg',
                    //           contentMaterial: '',
                    //           dateMaterial: ''),
                    //       MaterialCard(
                    //           imageMaterial:
                    //               'assets/07021397fcadef4ba4740935184c584d.jpeg',
                    //           contentMaterial: '',
                    //           dateMaterial: '')
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
