part of '../../import/u_import.dart';

class WidgetListview extends StatelessWidget {
  const WidgetListview({
    super.key,
    required this.progLang,
    required this.progLangList,
  });

  final List<ModelProgLang> progLang;
  final List<ModelProgLang> progLangList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: progLang.length,
      itemBuilder: (context, index) {
        final currProgLang = progLang[index];
        return Card(
          key: ValueKey(currProgLang.title),
          color: Colors.blue,
          child: ListTile(
            title: Text(currProgLang.title),
            subtitle: Text(currProgLang.desc),
            trailing: IconButton(
                onPressed: () {
                  if (!progLangList.contains(currProgLang)) {
                    context.read<ProviderProgLang>().addToList(currProgLang);
                  } else {
                    context
                        .read<ProviderProgLang>()
                        .removeFromList(currProgLang);
                  }
                },
                icon: Icon(
                  Icons.favorite,
                  color: progLangList.contains(currProgLang)
                      ? Colors.red
                      : Colors.white,
                )),
          ),
        );
      },
    );
  }
}
