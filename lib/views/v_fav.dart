part of '../import/u_import.dart';

class ViewFavorite extends StatefulWidget {
  const ViewFavorite({super.key});

  @override
  State<ViewFavorite> createState() => _ViewFavoriteState();
}

class _ViewFavoriteState extends State<ViewFavorite> {
  @override
  Widget build(BuildContext context) {
    var progLangList = context.watch<ProviderProgLang>().myList;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite List (${progLangList.length})'),
      ),
      body: ListView.builder(
        itemCount: progLangList.length,
        itemBuilder: (context, index) {
          final currProgLang = progLangList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Card(
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
                )),
          );
        },
      ),
    );
  }
}
