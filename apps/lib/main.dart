import 'package:flutter/material.dart';

import 'next_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigator',
      initialRoute: '/',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');

  HomeScreen({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('リスト画面'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return MyListItem(
                title: items[index],
                subtitle: 'サブタイトル',
                iconData: Icons.star,
              );
            },
          ),
        ));
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.iconData});

  final IconData iconData;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NextPage(title),
          ),
        );
      },
    );
  }
}
