import 'package:flutter/material.dart';
import 'package:the_news_app/srceen/home_page.dart';
import 'package:the_news_app/srceen/splash_content.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List<Map<String, String>> SlapshData = [
    {
      "Content":
          " You will have a clear idea and understanding of what is happening in your country and the whole world.",
      "Title": " Browse article with lastest stangegiest trend",
    },
    {
      "Content":
          "Various tools and news in the world,Newspapers provide information and general knowledge.",
      "Title": "Breaking News For Today ",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/5ef1a00c561067162f7f9b02a85417af.jpeg"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                      height: 100,
                    ),
                    Image.asset(
                      'assets/bbc.png',
                      width: 60,
                      height: 80,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'News',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: SlapshData.length,
                    itemBuilder: ((context, index) => SlpashContent(
                          Content: SlapshData[index]["Content"].toString(),
                          Title: SlapshData[index]["Title"].toString(),
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text(
                    'Get Start',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: const Alignment(1.2, -1),
                  child: Image.asset(
                    'assets/pp.png',
                    scale: 1.6,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
