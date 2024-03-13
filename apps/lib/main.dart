import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   final items = List<String>.generate(10000, (i) => 'Item $i');
//
//   HomeScreen({super.key});
//
//   @override
//   build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: const Text('リスト画面'),
//         ),
//         body: SizedBox(
//           width: double.infinity,
//           child: ListView.builder(
//             itemCount: items.length,
//             itemBuilder: (context, index) {
//               return MyListItem(
//                 title: items[index],
//                 subtitle: 'サブタイトル',
//                 iconData: Icons.star,
//               );
//             },
//           ),
//         ));
//   }
// }
//
// class MyListItem extends StatelessWidget {
//   const MyListItem(
//       {super.key,
//       required this.title,
//       required this.subtitle,
//       required this.iconData});
//
//   final IconData iconData;
//   final String title;
//   final String subtitle;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Icon(iconData),
//       title: Text(title),
//       subtitle: Text(subtitle),
//       trailing: const Icon(Icons.arrow_forward_ios),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => NextPage(title),
//           ),
//         );
//       },
//     );
//   }
// }
