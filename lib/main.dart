import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_news_app/model/article_model.dart';
import 'package:the_news_app/network/Network_service.dart';
import 'package:the_news_app/network/network_helper.dart';
import 'package:the_news_app/network/newwork_enum.dart';
import 'package:the_news_app/network/query_param.dart';
import 'package:the_news_app/srceen/home_page.dart';
// import 'package:the_news_app/srceen/home_page.dart';
import 'package:the_news_app/srceen/test_page.dart';
import 'package:the_news_app/static/static_values.dart';

// import 'srceen/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double width = 200, height = 200;
  @override
  Widget build(BuildContext context) {
    RendererBinding.instance?.setSemanticsEnabled(true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Articles'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            // final json = snapshot.data;

            final List<Article> articles = snapshot.data as List<Article>;

            return ListView.builder(
              itemBuilder: (context, index) {
                return Semantics(
                    label: 'Article widget Title ${articles[index].title}',
                    child: TestPage(article: articles[index]));
              },
              itemCount: articles.length,
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 25,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Something Went Wrong')
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<List<Article>?> getData() async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.get,
        url: StaticValues.apiUrl,
        queryParam: QP.aipQP(
            apiKey: StaticValues.apiKey, country: StaticValues.apiCountry));

    debugPrint('Response ${response?.statusCode}');

    return await NetworkHelper.filterResponse(
        callBack: _listOfArticlesFromJson,
        response: response,
        parameterName: CallBackParameterName.articles,
        onFailureCallBackWithMessage: (errorType, msg) {
          debugPrint('Error type-$errorType - Message $msg');
          return null;
        });
  }

  List<Article> _listOfArticlesFromJson(json) => (json as List)
      .map((e) => Article.fromJson(e as Map<String, dynamic>))
      .toList();
}
