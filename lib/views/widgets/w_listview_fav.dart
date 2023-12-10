part of '../../utils/import/u_import.dart';

class WidgetListviewFavorite extends StatelessWidget {
  const WidgetListviewFavorite({
    super.key,
    required this.progLangList,
  });

  final List<ModelProgLang> progLangList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                    child: const Text(
                      'Remove',
                      style: TextStyle(color: Colors.red),
                    )),
              )),
        );
      },
    );
  }
}
