import 'package:flutter/material.dart';
import 'package:resto_fadil/jeson/restaurant.dart';
import 'package:resto_fadil/page/resto_detail_page.dart';
import 'package:resto_fadil/page/resto_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Home',
      routes: {
        'Home': (context) => const RestoListPage(),
        'Detail': (context) => RestoDetailPage(
              restaurants:
                  ModalRoute.of(context)?.settings.arguments as Restaurant,
            )
      },
    );
  }
}
