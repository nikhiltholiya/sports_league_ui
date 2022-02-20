import 'package:flutter/material.dart';
import 'package:tenniston/Pages/Profile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  final HttpLink httpLink = HttpLink(
    'http://0.0.0.0:8000/graphql/',
  );
  final AuthLink authLink = AuthLink(
    getToken: () async => '',
  );
  final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(link: link, cache: GraphQLCache()),
  );
  runApp(GraphQLProvider(client: client, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}
