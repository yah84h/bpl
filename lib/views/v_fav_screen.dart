import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../import/u_import.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    var progLangList = context.watch<ProviderProgLang>().myList;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Fav List (${progLangList.length})'),
      ),
      body: ListView.builder(
        itemCount: progLangList.length,
        itemBuilder: (context, index) {
          final currProgLang = progLangList[index];
          return Card(
              key: ValueKey(currProgLang.title),
              color: Colors.blue,
              child: ListTile(
                title: Text(currProgLang.title),
                subtitle: Text(currProgLang.desc),
                trailing: TextButton(
                    onPressed: () {
                      context
                          .read<ProviderProgLang>()
                          .removeFromList(currProgLang);
                    },
                    child: const Text('Remove')),
              ));
        },
      ),
    );
  }
}
